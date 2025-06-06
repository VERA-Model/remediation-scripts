# CIS Control 5.2 - Ensure Event Log Retention for at least 30 Days

$logSettings = @{
    "Application" = 1073741824  # ~1GB
    "System" = 1073741824
    "Security" = 2147483647     # Max size (~2GB+)
}

foreach ($log in $logSettings.Keys) {
    Write-Host "Configuring log size for: $log"
    wevtutil sl $log /ms:$($logSettings[$log])
}

Write-Host "CIS 5.2: Log retention size updated for Windows event logs."
