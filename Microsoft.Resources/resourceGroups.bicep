targetScope = 'subscription'

param name string
param location string
param tags object = {}
param managedBy string = ''

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: name
  location: location
  tags: tags
  managedBy: managedBy
  properties: {}
}

output resourceGroupObj object = resourceGroup
