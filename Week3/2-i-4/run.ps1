New-AzureRmResourceGroupDeployment -Name "Week3" `
    -ResourceGroupName uinfrne1rgp `
    -TemplateFile .\2-i-4\template.json `
    -TemplateParameterFile .\2-i-4\template.parameters.json