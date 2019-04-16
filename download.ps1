$rootFolder = (Get-Item -Path "./" -Verbose).FullName
$copywrite_src = 'http://update.cz88.net/ip/copywrite.rar'
$qqwry_src = 'http://update.cz88.net/ip/qqwry.rar'
$copywrite_des = (Join-Path $rootFolder "copywrite.rar")
$qqwry_des = (Join-Path $rootFolder "qqwry.rar")
Invoke-WebRequest -uri $copywrite_src -OutFile $copywrite_des
Unblock-File $copywrite_des
Invoke-WebRequest -uri $qqwry_src -OutFile $qqwry_des
Unblock-File $qqwry_des