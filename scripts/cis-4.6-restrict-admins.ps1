# CIS Control 4.6 - Restrict Local Administrator Accounts

$allowedAdmins = @("Administrator", "ITAdmin1", "SecOpsAdmin")
$localAdmins = Get-LocalGroupMember -Group "Administrators"

foreach ($user in $localAdmins) {
    if ($allowedAdmins -notcontains $user.Name) {
        Write-Host "Removing unauthorized admin: $($user.Name)"
        Remove-LocalGroupMember -Group "Administrators" -Member $user.Name
    } else {
        Write-Host "Authorized admin retained: $($user.Name)"
    }
}
