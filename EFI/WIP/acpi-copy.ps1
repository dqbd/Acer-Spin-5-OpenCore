Remove-Item "D:\EFI\OC\ACPI" -Confirm:$false -Recurse -Verbose
Remove-Item "D:\EFI\OC\config.plist" -Confirm:$false -Verbose
Copy-Item ..\OC\ACPI -Destination "D:\EFI\OC" -Recurse -Verbose
Copy-Item ..\OC\config.plist -Destination "D:\EFI\OC" -Verbose