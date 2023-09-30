#./fileLevelFunc.ps1 -Message 'data 12312321'
$FilesPath = "$PSScriptRoot\files\*"
$Files1Path = "$PSScriptRoot\files"

./Zip.ps1 -SourcePath $FilesPath -DestinationPath $Files1Path


