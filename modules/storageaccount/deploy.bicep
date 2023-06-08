param pstgaccName string
param plocation string
param pstgSKU string
param pstgKind string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01'= {
  name: pstgaccName
  location: plocation
  sku: {
    name: pstgSKU
  }
  kind: pstgKind
}
