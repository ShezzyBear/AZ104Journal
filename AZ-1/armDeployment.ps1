$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addSkuParameter-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storageName az104armtemptest `
  -storageSKU Standard_GRS

  $today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addOutputs-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storageName az104armtemptest2 `
  -storageSKU Standard_LRSw