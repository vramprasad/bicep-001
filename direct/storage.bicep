param location string = resourceGroup().location
param namePrefix string

resource stg 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: '${namePrefix}${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
}


output blobUri string = stg.properties.primaryEndpoints.blob
