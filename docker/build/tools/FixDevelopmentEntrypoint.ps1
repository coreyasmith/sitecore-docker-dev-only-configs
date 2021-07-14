[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [ValidateScript({ Test-Path $_ -PathType Leaf })]
    [string]$Path
)

(Get-Content $Path).Replace( `
    '& "C:\LogMonitor\LogMonitor.exe" "powershell" "C:\Run-W3SVCService.ps1"', `
    '& "C:\LogMonitor\LogMonitor.exe" "C:\ServiceMonitor.exe" "w3svc"') | `
    Set-Content $Path
