$Wc = New-Object System.Net.WebClient
Write-Host "Downloading Qt..."
try {
	$Wc.DownloadFile($env:QT_SOURCE_URL, ${env:QTFILE})
}
catch {
	Write-Host $error[0].Exception.ToString()
}
