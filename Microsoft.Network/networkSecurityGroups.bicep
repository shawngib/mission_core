param name string
param tags object = {}
param securityRules array

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2021-03-01' = {
  name: name
  location: resourceGroup().location
  tags: tags
  properties: {
    securityRules: securityRules
  }
}

output networkSecurityGroups object = networkSecurityGroup
