param location string = resourceGroup().location

param swaName string

@allowed([ 'Free', 'Standard' ])
param swaSku string = 'Free'

param buildLocation string

module staticWebApp 'swa.bicep' = {
    name: '${deployment().name}--swa'
    params: {
        location: location
        sku: swaSku
        name: swaName
        buildLocation: buildLocation
        repositoryUrl: 'https://github.com/CoryBall/react_basketball.git'
        repositoryBranch: 'main'
    }
}
