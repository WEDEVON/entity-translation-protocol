param(
  [string]$AuditCsvPath = '.\\artifacts\\player_names\\audit.csv',
  [string]$OutputPath = '.\\src\\locales\\<locale>\\generated-map.ts'
)

$ErrorActionPreference = 'Stop'

Write-Output 'Generic promotion scaffold'
Write-Output 'Implement project-specific promotion logic.'
Write-Output 'Recommended policy: keep manual exceptions separate, promote reviewed stable rows only.'
Write-Output "Audit CSV: $AuditCsvPath"
Write-Output "Output map: $OutputPath"
