
@description('Turn security policy settings On or Off.')
param enableSecuritySettings bool = true
var securitySettings = enableSecuritySettings ? 'On' : 'Off'

resource securityPoliciesDefault 'Microsoft.Security/policies@2015-06-01-preview' = {
  name: 'default'
  properties: {
    policyLevel: 'Subscription'
    name: 'default'
    unique: 'Off'
    logCollection: 'On'
    recommendations: {
      patch: securitySettings
      baseline: securitySettings
      antimalware: securitySettings
      diskEncryption: securitySettings
      acls: securitySettings
      nsgs: securitySettings
      waf: securitySettings
      sqlAuditing: securitySettings
      sqlTde: securitySettings
      ngfw: securitySettings
      vulnerabilityAssessment: securitySettings
      storageEncryption: securitySettings
      jitNetworkAccess: securitySettings
    }
    pricingConfiguration: {
      selectedPricingTier: 'Standard'
    }
  }
}
