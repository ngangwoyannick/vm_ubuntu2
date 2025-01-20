param location string = 'Canada Central'
param storageAccountName string = 'innov${uniqueString(resourceGroup().id)}'
//param appServiceName string = 'innov${uniqueString(resourceGroup().id)}'
//param namePrefix string = 'plan'


//var appServicePlanName = 'innovation-cameroun'

//creating storage account

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
  sku: {
    name: 'Standard_LRS'
  }
}
  