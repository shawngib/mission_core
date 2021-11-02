param name string
param location string = resourceGroup().location
param tags object = {}

resource virtualMachine 'Microsoft.Compute/virtualMachines@2021-07-01' = {
  name: name
  location: location
  tags: tags
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  plan: {
    name: 'string'
    product: 'string'
    promotionCode: 'string'
    publisher: 'string'
  }
  properties: {
    additionalCapabilities: {
      hibernationEnabled: bool
      ultraSSDEnabled: bool
    }
    applicationProfile: {
      galleryApplications: [
        {
          configurationReference: 'string'
          order: int
          packageReferenceId: 'string'
          tags: 'string'
            tagName1: 'tagValue1'
            tagName2: 'tagValue2'
          }
        }
      ]
    }
    availabilitySet: {
      id: 'string'
    }
    billingProfile: {
      maxPrice: int
    }
    capacityReservation: {
      capacityReservationGroup: {
        id: 'string'
      }
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: bool
        storageUri: 'string'
      }
    }
    evictionPolicy: 'string'
    extensionsTimeBudget: 'string'
    hardwareProfile: {
      vmSize: 'string'
      vmSizeProperties: {
        vCPUsAvailable: int
        vCPUsPerCore: int
      }
    }
    host: {
      id: 'string'
    }
    hostGroup: {
      id: 'string'
    }
    licenseType: 'string'
    networkProfile: {
      networkApiVersion: '2020-11-01'
      networkInterfaceConfigurations: [
        {
          name: 'string'
          properties: {
            deleteOption: 'string'
            dnsSettings: {
              dnsServers: [ 'string' ]
            }
            dscpConfiguration: {
              id: 'string'
            }
            enableAcceleratedNetworking: bool
            enableFpga: bool
            enableIPForwarding: bool
            ipConfigurations: [
              {
                name: 'string'
                properties: {
                  applicationGatewayBackendAddressPools: [
                    {
                      id: 'string'
                    }
                  ]
                  applicationSecurityGroups: [
                    {
                      id: 'string'
                    }
                  ]
                  loadBalancerBackendAddressPools: [
                    {
                      id: 'string'
                    }
                  ]
                  primary: bool
                  privateIPAddressVersion: 'string'
                  publicIPAddressConfiguration: {
                    name: 'string'
                    properties: {
                      deleteOption: 'string'
                      dnsSettings: {
                        domainNameLabel: 'string'
                      }
                      idleTimeoutInMinutes: int
                      ipTags: [
                        {
                          ipTagType: 'string'
                          tag: 'string'
                        }
                      ]
                      publicIPAddressVersion: 'string'
                      publicIPAllocationMethod: 'string'
                      publicIPPrefix: {
                        id: 'string'
                      }
                    }
                    sku: {
                      name: 'string'
                      tier: 'string'
                    }
                  }
                  subnet: {
                    id: 'string'
                  }
                }
              }
            ]
            networkSecurityGroup: {
              id: 'string'
            }
            primary: bool
          }
        }
      ]
      networkInterfaces: [
        {
          id: 'string'
          properties: {
            deleteOption: 'string'
            primary: bool
          }
        }
      ]
    }
    osProfile: {
      adminPassword: 'string'
      adminUsername: 'string'
      allowExtensionOperations: bool
      computerName: 'string'
      customData: 'string'
      linuxConfiguration: {
        disablePasswordAuthentication: bool
        patchSettings: {
          assessmentMode: 'string'
          patchMode: 'string'
        }
        provisionVMAgent: bool
        ssh: {
          publicKeys: [
            {
              keyData: 'string'
              path: 'string'
            }
          ]
        }
      }
      requireGuestProvisionSignal: bool
      secrets: [
        {
          sourceVault: {
            id: 'string'
          }
          vaultCertificates: [
            {
              certificateStore: 'string'
              certificateUrl: 'string'
            }
          ]
        }
      ]
      windowsConfiguration: {
        additionalUnattendContent: [
          {
            componentName: 'Microsoft-Windows-Shell-Setup'
            content: 'string'
            passName: 'OobeSystem'
            settingName: 'string'
          }
        ]
        enableAutomaticUpdates: bool
        patchSettings: {
          assessmentMode: 'string'
          enableHotpatching: bool
          patchMode: 'string'
        }
        provisionVMAgent: bool
        timeZone: 'string'
        winRM: {
          listeners: [
            {
              certificateUrl: 'string'
              protocol: 'string'
            }
          ]
        }
      }
    }
    platformFaultDomain: int
    priority: 'string'
    proximityPlacementGroup: {
      id: 'string'
    }
    scheduledEventsProfile: {
      terminateNotificationProfile: {
        enable: bool
        notBeforeTimeout: 'string'
      }
    }
    securityProfile: {
      encryptionAtHost: bool
      securityType: 'TrustedLaunch'
      uefiSettings: {
        secureBootEnabled: bool
        vTpmEnabled: bool
      }
    }
    storageProfile: {
      dataDisks: [
        {
          createOption: 'string'
          deleteOption: 'string'
          detachOption: 'ForceDetach'
          diskSizeGB: int
          image: {
            uri: 'string'
          }
          lun: int
          managedDisk: {
            diskEncryptionSet: {
              id: 'string'
            }
            id: 'string'
            storageAccountType: 'string'
          }
          name: 'string'
          toBeDetached: bool
          vhd: {
            uri: 'string'
          }
          writeAcceleratorEnabled: bool
        }
      ]
      imageReference: {
        id: 'string'
        offer: 'string'
        publisher: 'string'
        sharedGalleryImageId: 'string'
        sku: 'string'
        version: 'string'
      }
      osDisk: {
        createOption: 'string'
        deleteOption: 'string'
        diffDiskSettings: {
          option: 'Local'
          placement: 'string'
        }
        diskSizeGB: int
        encryptionSettings: {
          diskEncryptionKey: {
            secretUrl: 'string'
            sourceVault: {
              id: 'string'
            }
          }
          enabled: bool
          keyEncryptionKey: {
            keyUrl: 'string'
            sourceVault: {
              id: 'string'
            }
          }
        }
        image: {
          uri: 'string'
        }
        managedDisk: {
          diskEncryptionSet: {
            id: 'string'
          }
          id: 'string'
          storageAccountType: 'string'
        }
        name: 'string'
        osType: 'string'
        vhd: {
          uri: 'string'
        }
        writeAcceleratorEnabled: bool
      }
    }
    userData: 'string'
    virtualMachineScaleSet: {
      id: 'string'
    }
  }
  zones: [ 'string' ]
}
