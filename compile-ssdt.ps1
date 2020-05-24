Write-Output "--- Compiling SSDTs ---" 
Get-ChildItem -Path ".\EFI\WIP\ACPI" -Filter SSDT*.dsl | ForEach-Object {
  ../iasl/iasl.exe -tc $_.FullName
}
Write-Output "--- Copying used SSDT to OC ---"
Get-ChildItem -Path ".\EFI\OC\ACPI" -Filter SSDT*.aml | ForEach-Object {
  $filename = "$($_.BaseName)$($_.Extension)"
  Write-Output "Copying $filename"
  Copy-Item ".\EFI\WIP\ACPI\$filename" -Destination ".\EFI\OC\ACPI\$filename" -Force
}