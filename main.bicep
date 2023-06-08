param location string = resourceGroup().location
param pstgaccName string = 'rp041-stg-001'
param pstgSKU string = 'Standard_LRS'
param pstgKind string = 'StorageV2'

param deployStorageAccount bool = false


module StorageAccount 'modules/storageaccount/deploy.bicep' = if (deployStorageAccount) {
  name: 'StorageAccount'
  params: {
    plocation: location
    pstgKind: pstgKind
    pstgSKU: pstgSKU
    pstgaccName: pstgaccName
  }  
}
