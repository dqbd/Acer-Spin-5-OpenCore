Remove-Item "E:\EFI\OC" -Confirm:$false -Recurse -Verbose
Copy-Item .\EFI\OC -Destination "E:\EFI" -Recurse -Verbose