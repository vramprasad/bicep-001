param location string = resourceGroup().location
param pstgaccName string
param pstgSKU string
param pstgKind string

param pAppService string
param pAppServicePlan string
param pASPKind string
param pASPSKU string
param pLinuxFXVersion string

param pAppInsightsName string
param pKind string

param deployStorageAccount bool = false

module AppInsightsSymName 'modules/appInsights/deploy.bicep' = {
  name: 'AppInsightsApp01'
  params: {
    pAppInsightsName: pAppInsightsName
    pKind: pKind
  }
}

module StorageAccount 'modules/storageaccount/deploy.bicep' = if (deployStorageAccount) {
  name: 'StorageAccount'
  params: {
    plocation: location
    pstgKind: pstgKind
    pstgSKU: pstgSKU
    pstgaccName: pstgaccName
  }  
}

module AppServiceSymName 'modules/appservice/deploy.bicep' = {
  name: 'AppServiceDoc01'
  params: {
    pAppService: pAppService
    pAppServicePlan: pAppServicePlan
    pASPKind: pASPKind
    pASPSKU: pASPSKU
    pLinuxFXVersion: pLinuxFXVersion

  }
}

output applicationInsightsIdMain string = AppInsightsSymName.outputs.applicationInsightsIddeploy
output applicationInsightsIdMainName string = AppInsightsSymName.name


