targetScope = 'subscription'

param managedBy string = 'shawn.gibbs@mscpec.com'
param namePrefix string = 'mlz'
param location string = deployment().location
param tags object = {}
var resourceGroups = [
  json(loadTextContent('./scaffolding/hub.json'))
  json(loadTextContent('./scaffolding/operations.json'))
  json(loadTextContent('./scaffolding/identity.json'))
  json(loadTextContent('./scaffolding/sharedServices.json'))
]
// {
//   hub: {
//     name: 'hub'
//     addressPrefix: '10.0.100.0/24'
//     subnets : {
//       name: 'hub-subnet'
//       properties: {
//         addressPrefix: '10.0.100.128/27'
//         serviceEndpoints: [
//           {
//             service: 'Microsoft.Storage'
//           }
//         ]
//       }
//     }
//   }
//   operations: {
//     name: 'operations'
//     addressPrefix:  '10.0.115.0/26'
//     subnets : {
//       name: 'operations-subnet'
//       properties: {
//         addressPrefix: '10.0.115.0/27'
//         serviceEndpoints: [
//           {
//             service: 'Microsoft.Storage'
//           }
//         ]
//       }
//     }
//   }
//   sharedServices: {
//     name: 'sharedServices'
//     addressPrefix: '10.0.120.0/26'
//     subnets : {
//       name: 'sharedServices-subnet'
//       properties: {
//         addressPrefix: '10.0.120.0/27'
//         serviceEndpoints: [
//           {
//             service: 'Microsoft.Storage'
//           }
//         ]
//       }
//     }
//   }
//   identity: {
//     name: 'identity'
//     addressPrefix: '10.0.110.0/26'
//     subnets : {
//       name: 'identity-subnet'
//       properties: {
//         addressPrefix: '10.0.110.0/27'
//         serviceEndpoints: [
//           {
//             service: 'Microsoft.Storage'
//           }
//         ]
//       }
//     }
//   }
// }

var name = empty(deployment().name) ? namePrefix : deployment().name 

var defaultNetworkSecurityGroupRules = [
  {
    name: 'allow_ssh'
    properties: {
      description: 'Allow SSH access from anywhere'
      access: 'Allow'
      priority: 100
      protocol: 'Tcp'
      direction: 'Inbound'
      sourcePortRange: '*'
      sourceAddressPrefix: '*'
      destinationPortRange: '22'
      destinationAddressPrefix: '*'
    }
  }
  {
    name: 'allow_rdp'
    properties: {
      description: 'Allow RDP access from anywhere'
      access: 'Allow'
      priority: 200
      protocol: 'Tcp'
      direction: 'Inbound'
      sourcePortRange: '*'
      sourceAddressPrefix: '*'
      destinationPortRange: '3389'
      destinationAddressPrefix: '*'
    }
  }
]

module MlzResourceGroup './Microsoft.Resources/resourceGroups.bicep' = [for rg in resourceGroups: {
  name: 'deploy-rg-${name}-${location}-${rg.name}'
  scope: subscription()
  params: {
    name: 'rg-${name}-${location}-${rg.name}'
    location: location
    tags: tags
    managedBy: managedBy
  }
}]

module storageAccount './Microsoft.Storage/storageAccounts.bicep' = [for rg in resourceGroups: {
  name: 'deploy-st-${rg.name}-${location}'
  scope: resourceGroup('rg-${name}-${location}-${rg.name}')
  dependsOn: [
    MlzResourceGroup
  ]
  params: {
    name: 'rg-${name}-${location}-${rg.name}'
  }
}]

module networkSecurityGroup 'Microsoft.Network/networkSecurityGroups.bicep' = [for rg in resourceGroups: {
  name: 'deploy-nsg-${rg.name}-${location}'
  scope: resourceGroup('rg-${name}-${location}-${rg.name}')
  dependsOn: [
    storageAccount
  ]
  params: {
    name: 'nsg-${name}-${location}-${rg.name}'
    tags: tags
    securityRules: defaultNetworkSecurityGroupRules
  }
}]

module virtualNetwork 'Microsoft.Network/virtualNetworks.bicep' = [for rg in resourceGroups: {
  name: 'deploy-vnet-${rg.name}-${location}'
  scope: resourceGroup('rg-${name}-${location}-${rg.name}')
  dependsOn: [
    networkSecurityGroup
  ]
  params: {
    name: 'vnet-${name}-${location}-${rg.name}'
    tags: tags
    addressPrefix: rg.addressPrefix
    subnets: rg.subnets
  }
}]
