$Wc = New-Object System.Net.WebClient
$Wc.DownloadFile('https://download.qt.io/official_releases/qt/5.12/5.12.3/qt-opensource-windows-x86-5.12.3.exe', 'qt.exe');
Write-Output 'Downloaded QT Installer'
[Environment]::SetEnvironmentVariable("QT_INSTALL_DIR", (Join-Path (Get-Location) "Qt"), "User");
Start-Process qt.exe -ArgumentList '--verbose --script ci/qt-install.txt' -NoNewWindow -Wait
Write-Output 'Installed QT Installer'
Get-ChildItem -Path Qt
Remove-Item qt.exe -Force
Remove-Item Qt\MaintenanceTool.exe -Force
Remove-Item Qt\Examples -Force -Recurse
Remove-Item Qt\Docs -Force -Recurse
Remove-Item Qt\vcredist -Force -Recurse
Get-ChildItem -Path Qt\5.12.3\msvc2017_64