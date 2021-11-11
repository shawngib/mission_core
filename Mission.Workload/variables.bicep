targetScope = 'subscription'

param name string = 'shawngibbs16'

resource deployments 'Microsoft.Resources/deployments@2021-04-01' existing = {
  name: name
}

output deploymentsObj object = deployments
