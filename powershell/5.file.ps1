$FilesPath = "$PSScriptRoot\files"
$Files1Path = "$PSScriptRoot\files1"
$tempDir = "$PSScriptRoot\tempDir"

# #Create Folder
# New-Item -Path $tempDir -ItemType Directory

# #Write File
# New-Item - Path "$FilesPath\file1.txt" -ItemType File

# #Write File with data
# Add-Content "$FilesPath\file2.txt" -Value "i File2"

#Copy Files
#Copy-Item $FilesPath $Files1Path -Recurse

#Copy Only Files
#Copy-Item "$FilesPath\*" $Files1Path -Recurse -Force

#Move Folder 
#Move-Item "$FilesPath\*" $Files1Path -Force

# #Rename Folder
#Rename-Item $tempDir "$PSScriptRoot\tempDir1"

# #Delete Folder
Remove-Item -Path "$Files1Path\*" -Recurse -Force

# #Read Files from Directory
if(Test-Path $FilesPath){
    $FileNames = @(Get-ChildItem $FilesPath)
    foreach ($File in $FileNames){
        $fileInfo = (Get-Item $File)
        Write-Host "File Name:" $fileInfo.BaseName
        Write-Host "File Path:" $fileInfo.DirectoryName
        Write-Host "File Timestamp:" $fileInfo.CreationTimeUtc
        Write-Host "File Size:" $fileInfo.Length
        $data = Get-Content $File
        Write-Host "Content: $data" 
    }
}