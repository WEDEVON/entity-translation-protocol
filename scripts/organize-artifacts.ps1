param(
  [string]$ProjectRoot = '.',
  [string]$ArtifactRoot = '.\\artifacts'
)

$ErrorActionPreference = 'Stop'

Write-Output 'Generic artifact organization scaffold'
Write-Output "Project root: $ProjectRoot"
Write-Output "Artifact root: $ArtifactRoot"
Write-Output 'Recommended folders: player_names, source_snapshots, debug.'
