param name string
param location string = resourceGroup().location
param tags object = {}
param skuName string = 'Standard_LRS'
param allowBlobPublicAccess bool = false

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: toLower(take('st${uniqueString(name)}', 24))
  location: location
  tags:  tags 
  sku: {
    name: skuName
  }
  kind: 'Storage'
  properties: {
    allowBlobPublicAccess: allowBlobPublicAccess
    allowCrossTenantReplication: true
    allowSharedKeyAccess: true
  }
}

output storageAccounts object = storageAccount
