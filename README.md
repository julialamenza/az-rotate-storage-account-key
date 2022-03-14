## ROTATE AZURE STORAGE ACCOUNTS KEYS

### USAGE
For run it you should pass 3 params
` ./rotatekeys.ps1 resource-group-name storage-account-name key-type`
Don't forgot to run
`Connect-AzAccount` >>  to login into azure account
Check your Az context
`Get-AzContext`
If you need to change the Az subscription run 
`Select-AzSubscription -SubscriptionName <subscription-name>`

**Remember
key1 = primary key
key2 = secondary key**

Enjoy :blush: :blush: