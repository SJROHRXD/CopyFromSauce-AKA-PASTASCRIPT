# Start
Write-Host "Hello, Friend... Ready to copy some" -NoNewline -ForegroundColor Yellow
Write-Host " Solved folders?" -ForegroundColor Green

Start-Sleep -Seconds 1

# Prompt the user for the source and destination repositories
$sourceRepo = Read-Host "`nEnter the path of the source repository.
`n`nI SAID THE SAUCE
`n`nDouble-check that you are copying the full path from Drive to 01-Activities Folder"

$destRepo = Read-Host "`nEnter the path of the destination repository.
`n`nTHE FOLDER IN WHICH YOU'D LIKE THE COPIES TO BE PASTED, MATE
`n`nDouble-check that you are copying the full path from Drive to 01-Activities Folder"

# Get a list of all folders in the source repository that contain "Solved" in their name
$solvedFolders = Get-ChildItem -Path $sourceRepo -Recurse -Directory -Filter "*Solved" -Exclude "*Unsolved"

$solvedFolders | ForEach-Object {
    # Get the path of the "Solved" folder in the source repository
    $sourceSolvedFolder = $_.FullName

    # Construct the path of the corresponding parent folder in the destination repository
    $sourceParentFolder = $_.Parent.FullName
    $destParentFolder = $sourceParentFolder.Replace($sourceRepo, $destRepo)

    # Copy the "Solved" folder to the destination parent folder
    $destSolvedFolder = $destParentFolder
    Copy-Item -Path $sourceSolvedFolder -Destination $destSolvedFolder -Recurse -Force
    # Write-Host "Copied '$sourceSolvedFolder' to '$destSolvedFolder'"
    
    # Display the copied folders with their relative paths
    $relPath = $sourceSolvedFolder.Replace($sourceRepo, '').Trim("\")
    Write-Host "Copied 'SAUCE \$relPath' to 'DESTINATION \$relPath' `n" -ForegroundColor Yellow
}
Write-Host "`nRelax."   -ForegroundColor Cyan 
Start-Sleep -Seconds 3
Write-Host "`nAll sauces have been pasta'd." -NoNewLine
Write-Host "Forcefully." -ForegroundColor Red

# Prompt to open the destination folder
$openDest = Read-Host "`nDo you want to open the destination folder?`n`n(Y/y) to OPEN or Any Other KEY to TERMINATE 👍🏻... 🔥..."

if ($openDest -eq "Y" -or $openDest -eq "y") {
    Start-Process "explorer.exe" -ArgumentList $destRepo
}