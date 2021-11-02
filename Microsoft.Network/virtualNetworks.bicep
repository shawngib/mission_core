param name string
param location string = resourceGroup().location
param tags object = {}
param addressPrefix string
param subnets object

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2021-03-01' existing = {
  name: replace(name,'vnet', 'nsg')
}

var arr = {
    properties: {
      networkSecurityGroup: {
        id: networkSecurityGroup.id
      }
  }
}

var subnet =(empty(networkSecurityGroup.id) ? subnets, union(subnets, arr))

resource virtualNetworks 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    addressSpace: {
      addressPrefixes: [ 
        addressPrefix
       ]
    }
    enableVmProtection: true
    flowTimeoutInMinutes: 10
    subnets: [
      subnet
    ]

  }
}
