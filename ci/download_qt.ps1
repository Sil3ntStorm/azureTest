$Wc = New-Object System.Net.WebClient
Write-Host "Downloading Qt..."
$Wc.DownloadFile($env:QT_SOURCE_URL, 'qt.zip')
Write-Host "Done"
