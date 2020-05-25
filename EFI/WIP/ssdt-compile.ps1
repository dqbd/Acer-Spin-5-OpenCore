Write-Output "--- Compiling SSDTs ---" 
Get-ChildItem -Path ".\ACPI" -Filter SSDT-EC.dsl | ForEach-Object {
  ../../../iasl/iasl.exe -tc $_.FullName
}
Write-Output "--- Copying used SSDT to OC ---"
Get-ChildItem -Path "..\OC\ACPI" -Filter SSDT*.aml | ForEach-Object {
  $filename = "$($_.BaseName)$($_.Extension)"
  Write-Output "Copying $filename"
  Copy-Item ".\ACPI\$filename" -Destination "..\OC\ACPI\$filename" -Force
}