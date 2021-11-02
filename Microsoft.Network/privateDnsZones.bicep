resource symbolicname 'Microsoft.Network/privateEndpoints/privateDnsZoneGroups@2021-03-01' = {
  name: 'string'
  parent: parentSymbolicName
  properties: {
    privateDnsZoneConfigs: [
      {
        name: 'string'
        properties: {
          privateDnsZoneId: 'string'
        }
      }
    ]
  }
}
