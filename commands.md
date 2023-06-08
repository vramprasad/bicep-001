az version
bicep —version

az bicep build --file main.bicep

az deployment group validate —resource-group rp0041-rg —template-file main.bicep

az deployment group what-if —resource-group rp0041-rg —template-file main.bicep

az deployment group what-if —resource-group rp0041-rg —template-file main.bicep --parameters .\parameters\dev.parameters.json

az account set —subscription <subscription_id>

az deployment group what-if \
  --name TestingDeployment \
  --resource-group rp0041-rg \
  --template-file main.bicep \
  --parameters .\parameters\dev.parameters.json

az bicep decompile --file main.json
 