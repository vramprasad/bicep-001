param location string = resourceGroup().location

resource stg 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: 'rp041${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
}


output blobUri string = stg.properties.primaryEndpoints.blob
