Remove-Item "E:\EFI\OC\ACPI" -Confirm:$false -Recurse -Verbose
Remove-Item "E:\EFI\OC\config.plist" -Confirm:$false -Verbose
Copy-Item .\EFI\OC\ACPI -Destination "E:\EFI\OC" -Recurse -Verbose
Copy-Item .\EFI\OC\config.plist -Destination "E:\EFI\OC" -Verbose