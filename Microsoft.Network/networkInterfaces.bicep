resource symbolicname 'Microsoft.Network/networkInterfaces@2021-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  properties: {
    dnsSettings: {
      dnsServers: [ 'string' ]
      internalDnsNameLabel: 'string'
    }
    enableAcceleratedNetworking: bool
    enableIPForwarding: bool
    ipConfigurations: [
      {
        id: 'string'
        name: 'string'
        properties: {
          applicationGatewayBackendAddressPools: [
            {
              id: 'string'
              name: 'string'
              properties: {
                backendAddresses: [
                  {
                    fqdn: 'string'
                    ipAddress: 'string'
                  }
                ]
              }
            }
          ]
          applicationSecurityGroups: [
            {
              id: 'string'
              location: 'string'
              properties: {}
              tags: {
                tagName1: 'tagValue1'
                tagName2: 'tagValue2'
              }
            }
          ]
          gatewayLoadBalancer: {
            id: 'string'
          }
          loadBalancerBackendAddressPools: [
            {
              id: 'string'
              name: 'string'
              properties: {
                loadBalancerBackendAddresses: [
                  {
                    name: 'string'
                    properties: {
                      ipAddress: 'string'
                      loadBalancerFrontendIPConfiguration: {
                        id: 'string'
                      }
                      subnet: {
                        id: 'string'
                      }
                      virtualNetwork: {
                        id: 'string'
                      }
                    }
                  }
                ]
                location: 'string'
                tunnelInterfaces: [
                  {
                    identifier: int
                    port: int
                    protocol: 'string'
                    type: 'string'
                  }
                ]
              }
            }
          ]
          loadBalancerInboundNatRules: [
            {
              id: 'string'
              name: 'string'
              properties: {
                backendAddressPool: {
                  id: 'string'
                }
                backendPort: int
                enableFloatingIP: bool
                enableTcpReset: bool
                frontendIPConfiguration: {
                  id: 'string'
                }
                frontendPort: int
                frontendPortRangeEnd: int
                frontendPortRangeStart: int
                idleTimeoutInMinutes: int
                protocol: 'string'
              }
            }
          ]
          primary: bool
          privateIPAddress: 'string'
          privateIPAddressVersion: 'string'
          privateIPAllocationMethod: 'string'
          publicIPAddress: {
            extendedLocation: {
              name: 'string'
              type: 'EdgeZone'
            }
            id: 'string'
            location: 'string'
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
              servicePublicIPAddress: {}
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
          subnet: {
            id: 'string'
            name: 'string'
            properties: {
              addressPrefix: 'string'
              addressPrefixes: [ 'string' ]
              applicationGatewayIpConfigurations: [
                {
                  id: 'string'
                  name: 'string'
                  properties: {
                    subnet: {
                      id: 'string'
                    }
                  }
                }
              ]
              delegations: [
                {
                  id: 'string'
                  name: 'string'
                  properties: {
                    serviceName: 'string'
                  }
                  type: 'string'
                }
              ]
              ipAllocations: [
                {
                  id: 'string'
                }
              ]
              natGateway: {
                id: 'string'
              }
              networkSecurityGroup: {
                id: 'string'
                location: 'string'
                properties: {
                  securityRules: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        access: 'string'
                        description: 'string'
                        destinationAddressPrefix: 'string'
                        destinationAddressPrefixes: [ 'string' ]
                        destinationApplicationSecurityGroups: [
                          {
                            id: 'string'
                            location: 'string'
                            properties: {}
                            tags: {
                              tagName1: 'tagValue1'
                              tagName2: 'tagValue2'
                            }
                          }
                        ]
                        destinationPortRange: 'string'
                        destinationPortRanges: [ 'string' ]
                        direction: 'string'
                        priority: int
                        protocol: 'string'
                        sourceAddressPrefix: 'string'
                        sourceAddressPrefixes: [ 'string' ]
                        sourceApplicationSecurityGroups: [
                          {
                            id: 'string'
                            location: 'string'
                            properties: {}
                            tags: {
                              tagName1: 'tagValue1'
                              tagName2: 'tagValue2'
                            }
                          }
                        ]
                        sourcePortRange: 'string'
                        sourcePortRanges: [ 'string' ]
                      }
                      type: 'string'
                    }
                  ]
                }
                tags: {
                  tagName1: 'tagValue1'
                  tagName2: 'tagValue2'
                }
              }
              privateEndpointNetworkPolicies: 'string'
              privateLinkServiceNetworkPolicies: 'string'
              routeTable: {
                id: 'string'
                location: 'string'
                properties: {
                  disableBgpRoutePropagation: bool
                  routes: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        addressPrefix: 'string'
                        hasBgpOverride: bool
                        nextHopIpAddress: 'string'
                        nextHopType: 'string'
                      }
                      type: 'string'
                    }
                  ]
                }
                tags: {
                  tagName1: 'tagValue1'
                  tagName2: 'tagValue2'
                }
              }
              serviceEndpointPolicies: [
                {
                  id: 'string'
                  location: 'string'
                  properties: {
                    contextualServiceEndpointPolicies: [ 'string' ]
                    serviceAlias: 'string'
                    serviceEndpointPolicyDefinitions: [
                      {
                        id: 'string'
                        name: 'string'
                        properties: {
                          description: 'string'
                          service: 'string'
                          serviceResources: [ 'string' ]
                        }
                        type: 'string'
                      }
                    ]
                  }
                  tags: {
                    tagName1: 'tagValue1'
                    tagName2: 'tagValue2'
                  }
                }
              ]
              serviceEndpoints: [
                {
                  locations: [ 'string' ]
                  service: 'string'
                }
              ]
            }
            type: 'string'
          }
          virtualNetworkTaps: [
            {
              id: 'string'
              location: 'string'
              properties: {
                destinationLoadBalancerFrontEndIPConfiguration: {
                  id: 'string'
                  name: 'string'
                  properties: {
                    gatewayLoadBalancer: {
                      id: 'string'
                    }
                    privateIPAddress: 'string'
                    privateIPAddressVersion: 'string'
                    privateIPAllocationMethod: 'string'
                    publicIPAddress: {
                      extendedLocation: {
                        name: 'string'
                        type: 'EdgeZone'
                      }
                      id: 'string'
                      location: 'string'
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
                        servicePublicIPAddress: {}
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
                    publicIPPrefix: {
                      id: 'string'
                    }
                    subnet: {
                      id: 'string'
                      name: 'string'
                      properties: {
                        addressPrefix: 'string'
                        addressPrefixes: [ 'string' ]
                        applicationGatewayIpConfigurations: [
                          {
                            id: 'string'
                            name: 'string'
                            properties: {
                              subnet: {
                                id: 'string'
                              }
                            }
                          }
                        ]
                        delegations: [
                          {
                            id: 'string'
                            name: 'string'
                            properties: {
                              serviceName: 'string'
                            }
                            type: 'string'
                          }
                        ]
                        ipAllocations: [
                          {
                            id: 'string'
                          }
                        ]
                        natGateway: {
                          id: 'string'
                        }
                        networkSecurityGroup: {
                          id: 'string'
                          location: 'string'
                          properties: {
                            securityRules: [
                              {
                                id: 'string'
                                name: 'string'
                                properties: {
                                  access: 'string'
                                  description: 'string'
                                  destinationAddressPrefix: 'string'
                                  destinationAddressPrefixes: [ 'string' ]
                                  destinationApplicationSecurityGroups: [
                                    {
                                      id: 'string'
                                      location: 'string'
                                      properties: {}
                                      tags: {
                                        tagName1: 'tagValue1'
                                        tagName2: 'tagValue2'
                                      }
                                    }
                                  ]
                                  destinationPortRange: 'string'
                                  destinationPortRanges: [ 'string' ]
                                  direction: 'string'
                                  priority: int
                                  protocol: 'string'
                                  sourceAddressPrefix: 'string'
                                  sourceAddressPrefixes: [ 'string' ]
                                  sourceApplicationSecurityGroups: [
                                    {
                                      id: 'string'
                                      location: 'string'
                                      properties: {}
                                      tags: {
                                        tagName1: 'tagValue1'
                                        tagName2: 'tagValue2'
                                      }
                                    }
                                  ]
                                  sourcePortRange: 'string'
                                  sourcePortRanges: [ 'string' ]
                                }
                                type: 'string'
                              }
                            ]
                          }
                          tags: {
                            tagName1: 'tagValue1'
                            tagName2: 'tagValue2'
                          }
                        }
                        privateEndpointNetworkPolicies: 'string'
                        privateLinkServiceNetworkPolicies: 'string'
                        routeTable: {
                          id: 'string'
                          location: 'string'
                          properties: {
                            disableBgpRoutePropagation: bool
                            routes: [
                              {
                                id: 'string'
                                name: 'string'
                                properties: {
                                  addressPrefix: 'string'
                                  hasBgpOverride: bool
                                  nextHopIpAddress: 'string'
                                  nextHopType: 'string'
                                }
                                type: 'string'
                              }
                            ]
                          }
                          tags: {
                            tagName1: 'tagValue1'
                            tagName2: 'tagValue2'
                          }
                        }
                        serviceEndpointPolicies: [
                          {
                            id: 'string'
                            location: 'string'
                            properties: {
                              contextualServiceEndpointPolicies: [ 'string' ]
                              serviceAlias: 'string'
                              serviceEndpointPolicyDefinitions: [
                                {
                                  id: 'string'
                                  name: 'string'
                                  properties: {
                                    description: 'string'
                                    service: 'string'
                                    serviceResources: [ 'string' ]
                                  }
                                  type: 'string'
                                }
                              ]
                            }
                            tags: {
                              tagName1: 'tagValue1'
                              tagName2: 'tagValue2'
                            }
                          }
                        ]
                        serviceEndpoints: [
                          {
                            locations: [ 'string' ]
                            service: 'string'
                          }
                        ]
                      }
                      type: 'string'
                    }
                  }
                  zones: [ 'string' ]
                }
                destinationNetworkInterfaceIPConfiguration: {
                destinationPort: int
              }
              tags: {
                tagName1: 'tagValue1'
                tagName2: 'tagValue2'
              }
            }
          ]
        }
        type: 'string'
      }
    ]
    migrationPhase: 'string'
    networkSecurityGroup: {
      id: 'string'
      location: 'string'
      properties: {
        securityRules: [
          {
            id: 'string'
            name: 'string'
            properties: {
              access: 'string'
              description: 'string'
              destinationAddressPrefix: 'string'
              destinationAddressPrefixes: [ 'string' ]
              destinationApplicationSecurityGroups: [
                {
                  id: 'string'
                  location: 'string'
                  properties: {}
                  tags: {
                    tagName1: 'tagValue1'
                    tagName2: 'tagValue2'
                  }
                }
              ]
              destinationPortRange: 'string'
              destinationPortRanges: [ 'string' ]
              direction: 'string'
              priority: int
              protocol: 'string'
              sourceAddressPrefix: 'string'
              sourceAddressPrefixes: [ 'string' ]
              sourceApplicationSecurityGroups: [
                {
                  id: 'string'
                  location: 'string'
                  properties: {}
                  tags: {
                    tagName1: 'tagValue1'
                    tagName2: 'tagValue2'
                  }
                }
              ]
              sourcePortRange: 'string'
              sourcePortRanges: [ 'string' ]
            }
            type: 'string'
          }
        ]
      }
      tags: {
        tagName1: 'tagValue1'
        tagName2: 'tagValue2'
      }
    }
    nicType: 'string'
    privateLinkService: {
      extendedLocation: {
        name: 'string'
        type: 'EdgeZone'
      }
      id: 'string'
      location: 'string'
      properties: {
        autoApproval: {
          subscriptions: [ 'string' ]
        }
        enableProxyProtocol: bool
        fqdns: [ 'string' ]
        ipConfigurations: [
          {
            id: 'string'
            name: 'string'
            properties: {
              primary: bool
              privateIPAddress: 'string'
              privateIPAddressVersion: 'string'
              privateIPAllocationMethod: 'string'
              subnet: {
                id: 'string'
                name: 'string'
                properties: {
                  addressPrefix: 'string'
                  addressPrefixes: [ 'string' ]
                  applicationGatewayIpConfigurations: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        subnet: {
                          id: 'string'
                        }
                      }
                    }
                  ]
                  delegations: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        serviceName: 'string'
                      }
                      type: 'string'
                    }
                  ]
                  ipAllocations: [
                    {
                      id: 'string'
                    }
                  ]
                  natGateway: {
                    id: 'string'
                  }
                  networkSecurityGroup: {
                    id: 'string'
                    location: 'string'
                    properties: {
                      securityRules: [
                        {
                          id: 'string'
                          name: 'string'
                          properties: {
                            access: 'string'
                            description: 'string'
                            destinationAddressPrefix: 'string'
                            destinationAddressPrefixes: [ 'string' ]
                            destinationApplicationSecurityGroups: [
                              {
                                id: 'string'
                                location: 'string'
                                properties: {}
                                tags: {
                                  tagName1: 'tagValue1'
                                  tagName2: 'tagValue2'
                                }
                              }
                            ]
                            destinationPortRange: 'string'
                            destinationPortRanges: [ 'string' ]
                            direction: 'string'
                            priority: int
                            protocol: 'string'
                            sourceAddressPrefix: 'string'
                            sourceAddressPrefixes: [ 'string' ]
                            sourceApplicationSecurityGroups: [
                              {
                                id: 'string'
                                location: 'string'
                                properties: {}
                                tags: {
                                  tagName1: 'tagValue1'
                                  tagName2: 'tagValue2'
                                }
                              }
                            ]
                            sourcePortRange: 'string'
                            sourcePortRanges: [ 'string' ]
                          }
                          type: 'string'
                        }
                      ]
                    }
                    tags: {
                      tagName1: 'tagValue1'
                      tagName2: 'tagValue2'
                    }
                  }
                  privateEndpointNetworkPolicies: 'string'
                  privateLinkServiceNetworkPolicies: 'string'
                  routeTable: {
                    id: 'string'
                    location: 'string'
                    properties: {
                      disableBgpRoutePropagation: bool
                      routes: [
                        {
                          id: 'string'
                          name: 'string'
                          properties: {
                            addressPrefix: 'string'
                            hasBgpOverride: bool
                            nextHopIpAddress: 'string'
                            nextHopType: 'string'
                          }
                          type: 'string'
                        }
                      ]
                    }
                    tags: {
                      tagName1: 'tagValue1'
                      tagName2: 'tagValue2'
                    }
                  }
                  serviceEndpointPolicies: [
                    {
                      id: 'string'
                      location: 'string'
                      properties: {
                        contextualServiceEndpointPolicies: [ 'string' ]
                        serviceAlias: 'string'
                        serviceEndpointPolicyDefinitions: [
                          {
                            id: 'string'
                            name: 'string'
                            properties: {
                              description: 'string'
                              service: 'string'
                              serviceResources: [ 'string' ]
                            }
                            type: 'string'
                          }
                        ]
                      }
                      tags: {
                        tagName1: 'tagValue1'
                        tagName2: 'tagValue2'
                      }
                    }
                  ]
                  serviceEndpoints: [
                    {
                      locations: [ 'string' ]
                      service: 'string'
                    }
                  ]
                }
                type: 'string'
              }
            }
          }
        ]
        loadBalancerFrontendIpConfigurations: [
          {
            id: 'string'
            name: 'string'
            properties: {
              gatewayLoadBalancer: {
                id: 'string'
              }
              privateIPAddress: 'string'
              privateIPAddressVersion: 'string'
              privateIPAllocationMethod: 'string'
              publicIPAddress: {
                extendedLocation: {
                  name: 'string'
                  type: 'EdgeZone'
                }
                id: 'string'
                location: 'string'
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
                  servicePublicIPAddress: {}
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
              publicIPPrefix: {
                id: 'string'
              }
              subnet: {
                id: 'string'
                name: 'string'
                properties: {
                  addressPrefix: 'string'
                  addressPrefixes: [ 'string' ]
                  applicationGatewayIpConfigurations: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        subnet: {
                          id: 'string'
                        }
                      }
                    }
                  ]
                  delegations: [
                    {
                      id: 'string'
                      name: 'string'
                      properties: {
                        serviceName: 'string'
                      }
                      type: 'string'
                    }
                  ]
                  ipAllocations: [
                    {
                      id: 'string'
                    }
                  ]
                  natGateway: {
                    id: 'string'
                  }
                  networkSecurityGroup: {
                    id: 'string'
                    location: 'string'
                    properties: {
                      securityRules: [
                        {
                          id: 'string'
                          name: 'string'
                          properties: {
                            access: 'string'
                            description: 'string'
                            destinationAddressPrefix: 'string'
                            destinationAddressPrefixes: [ 'string' ]
                            destinationApplicationSecurityGroups: [
                              {
                                id: 'string'
                                location: 'string'
                                properties: {}
                                tags: {
                                  tagName1: 'tagValue1'
                                  tagName2: 'tagValue2'
                                }
                              }
                            ]
                            destinationPortRange: 'string'
                            destinationPortRanges: [ 'string' ]
                            direction: 'string'
                            priority: int
                            protocol: 'string'
                            sourceAddressPrefix: 'string'
                            sourceAddressPrefixes: [ 'string' ]
                            sourceApplicationSecurityGroups: [
                              {
                                id: 'string'
                                location: 'string'
                                properties: {}
                                tags: {
                                  tagName1: 'tagValue1'
                                  tagName2: 'tagValue2'
                                }
                              }
                            ]
                            sourcePortRange: 'string'
                            sourcePortRanges: [ 'string' ]
                          }
                          type: 'string'
                        }
                      ]
                    }
                    tags: {
                      tagName1: 'tagValue1'
                      tagName2: 'tagValue2'
                    }
                  }
                  privateEndpointNetworkPolicies: 'string'
                  privateLinkServiceNetworkPolicies: 'string'
                  routeTable: {
                    id: 'string'
                    location: 'string'
                    properties: {
                      disableBgpRoutePropagation: bool
                      routes: [
                        {
                          id: 'string'
                          name: 'string'
                          properties: {
                            addressPrefix: 'string'
                            hasBgpOverride: bool
                            nextHopIpAddress: 'string'
                            nextHopType: 'string'
                          }
                          type: 'string'
                        }
                      ]
                    }
                    tags: {
                      tagName1: 'tagValue1'
                      tagName2: 'tagValue2'
                    }
                  }
                  serviceEndpointPolicies: [
                    {
                      id: 'string'
                      location: 'string'
                      properties: {
                        contextualServiceEndpointPolicies: [ 'string' ]
                        serviceAlias: 'string'
                        serviceEndpointPolicyDefinitions: [
                          {
                            id: 'string'
                            name: 'string'
                            properties: {
                              description: 'string'
                              service: 'string'
                              serviceResources: [ 'string' ]
                            }
                            type: 'string'
                          }
                        ]
                      }
                      tags: {
                        tagName1: 'tagValue1'
                        tagName2: 'tagValue2'
                      }
                    }
                  ]
                  serviceEndpoints: [
                    {
                      locations: [ 'string' ]
                      service: 'string'
                    }
                  ]
                }
                type: 'string'
              }
            }
            zones: [ 'string' ]
          }
        ]
        visibility: {
          subscriptions: [ 'string' ]
        }
      }
      tags: {
        tagName1: 'tagValue1'
        tagName2: 'tagValue2'
      }
    }
    workloadType: 'string'
  }
}
