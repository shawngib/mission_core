resource symbolicname 'Microsoft.Network/publicIPAddresses@2021-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'string'
    tier: 'string'
  }
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  properties: {
    ddosSettings: {
      ddosCustomPolicy: {
        id: 'string'
      }
      protectedIP: bool
      protectionCoverage: 'string'
    }
    deleteOption: 'string'
    dnsSettings: {
      domainNameLabel: 'string'
      fqdn: 'string'
      reverseFqdn: 'string'
    }
    idleTimeoutInMinutes: int
    ipAddress: 'string'
    ipTags: [
      {
        ipTagType: 'string'
        tag: 'string'
      }
    ]
    linkedPublicIPAddress: {
      extendedLocation: {
        name: 'string'
        type: 'EdgeZone'
      }
      id: 'string'
      location: 'string'
      properties: {
      sku: {
        name: 'string'
        tier: 'string'
      }
      tags: {
        tagName1: 'tagValue1'
        tagName2: 'tagValue2'
      }
      zones: [ 'string' ]
    }
    migrationPhase: 'string'
    natGateway: {
      id: 'string'
      location: 'string'
      properties: {
        idleTimeoutInMinutes: int
        publicIpAddresses: [
          {
            id: 'string'
          }
        ]
        publicIpPrefixes: [
          {
            id: 'string'
          }
        ]
      }
      sku: {
        name: 'Standard'
      }
      tags: {
        tagName1: 'tagValue1'
        tagName2: 'tagValue2'
      }
      zones: [ 'string' ]
    }
    publicIPAddressVersion: 'string'
    publicIPAllocationMethod: 'string'
    publicIPPrefix: {
      id: 'string'
    }
    servicePublicIPAddress: {
      extendedLocation: {
        name: 'string'
        type: 'EdgeZone'
      }
      id: 'string'
      location: 'string'
      properties: {
      sku: {
        name: 'string'
        tier: 'string'
      }
      tags: {
        tagName1: 'tagValue1'
        tagName2: 'tagValue2'
      }
      zones: [ 'string' ]
    }
  }
  zones: [ 'string' ]
}
