Write-Host "===== IIS Health Check ====="

Write-Host "`nChecking IIS Service:"
Get-Service W3SVC

Write-Host "`nChecking Running Websites:"
Get-Website

Write-Host "`nCPU Usage:"
Get-WmiObject win32_processor | Select LoadPercentage

Write-Host "`nMemory Usage:"
Get-WmiObject Win32_OperatingSystem | Select FreePhysicalMemory,TotalVisibleMemorySize