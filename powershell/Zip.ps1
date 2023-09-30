Param
([string]$SourcePath,[string]$DestinationPath)

Write-Host $SourcePath $DestinationPath
Compress-Archive -Path $SourcePath -DestinationPath $DestinationPath -Force

