$subscriptionId = (Get-AzureRmContext).Subscription.Id
$subscriptionScope = "/subscriptions/$($subscriptionId)"

# Deploy AllowedLocations policy
$policyDefinition = New-AzureRmPolicyDefinition -Name "AllowedLocations" -Policy ".\Policies\AllowedLocations\policy.rules.json" -Parameter ".\Policies\AllowedLocations\policy.parameters.json"
New-AzureRmPolicyAssignment -Name "AllowedLocations" -PolicyDefinition $policyDefinition -Scope $subscriptionScope

# Deploy resource naming convention policies
$policyPath = ".\Policies\Naming\policy.rules.json"

$policyDefinition = New-AzureRmPolicyDefinition -Name "ManagedDiskNaming" -Policy $policyPath -Parameter ".\Policies\Naming\policy.manageddisk.parameters.json"
New-AzureRmPolicyAssignment -Name "ManagedDiskNaming" -PolicyDefinition $policyDefinition -Scope $subscriptionScope

$policyDefinition = New-AzureRmPolicyDefinition -Name "NetworkInterfaceNaming" -Policy $policyPath -Parameter ".\Policies\Naming\policy.networkinterface.parameters.json"
New-AzureRmPolicyAssignment -Name "NetworkInterfaceNaming" -PolicyDefinition $policyDefinition -Scope $subscriptionScope

$policyDefinition = New-AzureRmPolicyDefinition -Name "StorageAccountNaming" -Policy $policyPath -Parameter ".\Policies\Naming\policy.storageaccount.parameters.json"
New-AzureRmPolicyAssignment -Name "StorageAccountNaming" -PolicyDefinition $policyDefinition -Scope $subscriptionScope

$policyDefinition = New-AzureRmPolicyDefinition -Name "VirtualMachineNaming" -Policy $policyPath -Parameter ".\Policies\Naming\policy.storageaccount.parameters.json"
New-AzureRmPolicyAssignment -Name "VirtualMachineNaming" -PolicyDefinition $policyDefinition -Scope $subscriptionScope

$policyDefinition = New-AzureRmPolicyDefinition -Name "VirtualNetworkNaming" -Policy $policyPath -Parameter ".\Policies\Naming\policy.storageaccount.parameters.json"
New-AzureRmPolicyAssignment -Name "VirtualNetworkNaming" -PolicyDefinition $policyDefinition -Scope $subscriptionScope