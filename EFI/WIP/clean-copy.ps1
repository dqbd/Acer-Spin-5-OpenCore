Remove-Item "E:\EFI\OC" -Confirm:$false -Recurse -Verbose
Copy-Item ..\OC -Destination "E:\EFI" -Recurse -Verbose