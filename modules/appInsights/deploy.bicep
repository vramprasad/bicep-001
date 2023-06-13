param pAppInsightsName string
param location string = resourceGroup().location
param pKind string
resource AppInsightsSymNameM 'Microsoft.Insights/components@2020-02-02' = {
  name: pAppInsightsName
  location: location
  kind: pKind
}

output applicationInsightsIddeploy string = AppInsightsSymNameM.id
