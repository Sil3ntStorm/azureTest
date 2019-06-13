$Wc = New-Object System.Net.WebClient
Write-Host "Downloading Qt..."
try {
	$Wc.DownloadFile($env:QT_SOURCE_URL, ${env:QTFILE})
	if ($IsLinux) {
		$cwd = Get-Location
		Write-Host "##vso[task.setvariable variable=PATH]${env:PATH}:${cwd}/Qt/${env:QTVER}/bin"
		Write-Host "##vso[task.setvariable variable=QTDIR]${cwd}/Qt/${env:QTVER}"
		Write-Host "##vso[task.setvariable variable=QSPEC]-spec ${cwd}/Qt/${env:QTVER}/mkspecs/linux-clang-libc++"
	}
}
catch {
	Write-Host $error[0].Exception.ToString()
}
Write-Host "Done"
Get-ChildItem
