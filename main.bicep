param location string = resourceGroup().location

module stgDeply 'storage.bicep' = {
  name: 'stgDeploy'
  params: {
    namePrefix: 'rp041'
    location: location
  }
}

output blobUri string = stgDeply.outputs.blobUri
