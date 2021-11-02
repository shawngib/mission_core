resource symbolicname 'Microsoft.OperationsManagement/solutions@2015-11-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  plan: {
    name: 'string'
    product: 'string'
    promotionCode: 'string'
    publisher: 'string'
  }
  properties: {
    containedResources: [ 'string' ]
    referencedResources: [ 'string' ]
    workspaceResourceId: 'string'
  }
}
