# Enable Microsoft Defender Tamper Protection (Windows 10/11 Enterprise)

$regPath = "HKLM:\SOFTWARE\Microsoft\Windows Defender\Features"
New-Item -Path $regPath -Force | Out-Null

# Set Tamper Protection value
Set-ItemProperty -Path $regPath -Name "TamperProtection" -Value 5 -Force

Write-Host "Tamper Protection has been enabled. A reboot may be required for enforcement."
