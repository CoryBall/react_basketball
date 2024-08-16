param name string

@allowed([ 'centralus'])
param location string = 'centralus'

@allowed(['Free', 'Standard'])
param sku string = 'Free'

param repositoryUrl string
param repositoryBranch string
param buildLocation string

resource swa_resource 'Microsoft.Web/staticSites@2023-12-01' = {
  name: name
  location: location
  tags: null
  properties: {
    provider: 'Github'
    repositoryUrl: repositoryUrl
    branch: repositoryBranch
    buildProperties: {
      appLocation: buildLocation
      skipGithubActionWorkflowGeneration: true
    }
  }
  sku: {
    name: sku
    size: sku
  }
}
