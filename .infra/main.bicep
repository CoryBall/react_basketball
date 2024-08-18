param location string = resourceGroup().location
param branch string
param name string
@secure()
param repositoryToken string
// param customDomainName string

resource staticWebApp  'Microsoft.Web/staticSites@2023-12-01' = {
  name: name
  location: location
  sku: {
    name: 'Free'
    size: 'Free'
  }
  properties: {
    repositoryUrl: 'https://github.com/CoryBall/react_basketball.git'
    repositoryToken: repositoryToken 
    branch: branch
    provider: 'Github'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    buildProperties: {
      skipGithubActionWorkflowGeneration: true
    }
  }
}

// resource customDomain 'Microsoft.Web/staticSites/customDomains@2021-02-01' = {
//   parent: staticWebApp
//   name: customDomainName
//   properties: {}
// }

output staticWebAppDefaultHostName string = staticWebApp.properties.defaultHostname // eg gentle-bush-0db02ce03.azurestaticapps.net
output staticWebAppId string = staticWebApp.id
output staticWebAppName string = staticWebApp.name
