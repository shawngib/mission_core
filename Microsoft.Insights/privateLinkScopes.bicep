resource symbolicname 'microsoft.insights/privateLinkScopes@2021-07-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    accessModeSettings: {
      exclusions: [
        {
          ingestionAccessMode: 'string'
          privateEndpointConnectionName: 'string'
          queryAccessMode: 'string'
        }
      ]
      ingestionAccessMode: 'string'
      queryAccessMode: 'string'
    }
  }
}
