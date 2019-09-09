$disk = GWmi -Cn PCName Win32_LogicalDisk -Filter "DeviceID='C:'" | Select Size, FreeSpace

Write-Host ("{0}GB total" -f [math]::truncate($disk.Size / 1GB))
Write-Host ("{0}GB free" -f [math]::truncate($disk.FreeSpace / 1GB))
