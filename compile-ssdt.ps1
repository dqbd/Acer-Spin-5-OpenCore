Write-Output "--- Compiling SSDTs ---" 
../iasl/iasl.exe "./EFI/WIP/ACPI/SSDT*.dsl"
Write-Output "--- Copying used SSDT to OC ---"
Get-ChildItem -Path ".\EFI\OC\ACPI" -Filter *.aml | ForEach-Object {
  $filename = "$($_.BaseName)$($_.Extension)"
  Write-Output "Copying $filename"
  Copy-Item ".\EFI\WIP\ACPI\$filename" -Destination ".\EFI\OC\ACPI\$filename" -Force
}