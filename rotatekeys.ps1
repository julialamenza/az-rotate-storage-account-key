# for run it you should pass 3 params e.g ./rotatekeys.ps1 resource-group-name storage-account-name key-type
# dont forgot to run Connect-AzAccount to login into azure account
# if you need to change the Az subscription run Select-AzSubscription -SubscriptionName <subscription-name>


param ($resourceGroup, $storage, $key)
if ($resourceGroup -eq $null) {
    $resourceGroup = read-host -Prompt "Please enter a ResourceGroup" 
    }
if  ($storage -eq $null) {
        $storage = read-host -Prompt "Please enter a Storage Account" 
        }
if  ($key -eq $null) {
            $key = read-host -Prompt "Please enter if is key1 or key2" 
            }

# key1 = primary key2 = secondary
New-AzStorageAccountKey -ResourceGroupName $resourceGroup `
  -Name $storage `
  -KeyName $key