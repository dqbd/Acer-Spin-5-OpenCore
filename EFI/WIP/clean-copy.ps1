Remove-Item "D:\EFI\OC" -Confirm:$false -Recurse -Verbose
Copy-Item ..\OC -Destination "D:\EFI" -Recurse -Verbose