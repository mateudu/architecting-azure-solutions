New-AzureRmResourceGroupDeployment -Name "Week3" `
    -ResourceGroupName uinfrne1rgp `
    -TemplateFile .\template.json `
    -TemplateParameterFile .\template.parameters.json