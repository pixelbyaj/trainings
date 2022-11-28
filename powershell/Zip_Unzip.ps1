Function Zip
{
    Param([string]$SourcePath,[string]$DestinationPath)
    Write-Host $SourcePath $DestinationPath
    Compress-Archive -Path $SourcePath -DestinationPath $DestinationPath -Force
}

Function UnZip{
    Param([string]$SourcePath,[string]$DestinationPath)
    Write-Host $SourcePath $DestinationPath
    Expand-Archive -LiteralPath $SourcePath -DestinationPath $DestinationPath -Force
}