# Variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "examplestorageacct"
$skuName = "Standard_LRS"
$kind = "StorageV2"

# Login to Azure
Connect-AzAccount

# Create Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind $kind `
                     -EnableHttpsTrafficOnly $true