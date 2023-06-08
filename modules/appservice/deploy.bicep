param pAppServicePlan string = 'doc-app-01-d-asp'
param pLocation string = 'southindia'
param pASPSKU string = 'F1'
param pASPKind string = 'linux'
param pAppService string = 'doc-app-01-d-as'
param pLinuxFXVersion string = 'node|14-lts'

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
