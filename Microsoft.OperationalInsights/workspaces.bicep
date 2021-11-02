resource symbolicname 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  eTag: 'string'
  properties: {
    features: {
      clusterResourceId: 'string'
      disableLocalAuth: bool
      enableDataExport: bool
      enableLogAccessUsingOnlyResourcePermissions: bool
      immediatePurgeDataOn30Days: bool
    }
    forceCmkForQuery: bool
    provisioningState: 'string'
    publicNetworkAccessForIngestion: 'string'
    publicNetworkAccessForQuery: 'string'
    retentionInDays: int
    sku: {
      capacityReservationLevel: int
      name: 'string'
    }
    workspaceCapping: {
      dailyQuotaGb: int
    }
  }
}
