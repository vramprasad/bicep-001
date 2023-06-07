az version
bicep —version

az bicep build --file main.bicep

az deployment group validate —resource-group rp0041-rg —template-file appservice.bicep

az deployment group what-if —resource-group rp0041-rg —template-file appservice.bicep

az account set —subscription <subscription_id>

az bicep decompile --file main.json
