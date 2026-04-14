param(
  [string]$SourceDataPath = '.\\artifacts\\source_snapshots\\source.json',
  [string]$ManualMapPath = '.\\src\\locales\\<locale>\\manual-map.ts',
  [string]$GeneratedMapPath = '.\\src\\locales\\<locale>\\generated-map.ts',
  [string]$ArtifactRoot = '.\\artifacts\\player_names'
)

$ErrorActionPreference = 'Stop'

Write-Output 'Generic audit scaffold'
Write-Output 'Implement project-specific parsing for source data and map formats.'
Write-Output 'Recommended outputs: audit.csv, audit_summary.txt, high_risk.csv, review_queue.csv.'
Write-Output "Source data: $SourceDataPath"
Write-Output "Manual map: $ManualMapPath"
Write-Output "Generated map: $GeneratedMapPath"
Write-Output "Artifacts: $ArtifactRoot"
