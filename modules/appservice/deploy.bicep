param pAppServicePlan string 
param pLocation string = resourceGroup().location
param pASPSKU string
param pASPKind string
param pAppService string
param pLinuxFXVersion string


resource AppServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: pAppServicePlan
  location: pLocation
  sku: {
    name: pASPSKU
  }
  kind: pASPKind
}

resource AppService 'Microsoft.Web/sites@2021-02-01' = {
  name: pAppService
  location: pLocation
  properties: {
    serverFarmId: AppServicePlan.id
    siteConfig: {
      linuxFxVersion: pLinuxFXVersion
    }
  }
}
