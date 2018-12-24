New-AzureRmResourceGroupDeployment -Name "Week3" `
    -ResourceGroupName uinfrwe1rgp `
    -TemplateFile .\templateKv.json `
    -TemplateParameterFile .\templateKv.parameters.json