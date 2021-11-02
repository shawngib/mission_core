resource symbolicname 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2018-09-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: parentSymbolicName
  etag: 'string'
  properties: {
    registrationEnabled: bool
    virtualNetwork: {
      id: 'string'
    }
  }
}
