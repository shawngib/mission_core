resource symbolicname 'Microsoft.Compute/virtualMachines/extensions@2021-07-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: parentSymbolicName
  properties: {
    autoUpgradeMinorVersion: bool
    enableAutomaticUpgrade: bool
    forceUpdateTag: 'string'
    instanceView: {
      name: 'string'
      statuses: [
        {
          code: 'string'
          displayStatus: 'string'
          level: 'string'
          message: 'string'
          time: 'string'
        }
      ]
      substatuses: [
        {
          code: 'string'
          displayStatus: 'string'
          level: 'string'
          message: 'string'
          time: 'string'
        }
      ]
      type: 'string'
      typeHandlerVersion: 'string'
    }
    protectedSettings: any()
    publisher: 'string'
    settings: any()
    suppressFailures: bool
    type: 'string'
    typeHandlerVersion: 'string'
  }
}
