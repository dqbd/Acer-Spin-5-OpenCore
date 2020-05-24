Write-Output "--- Compiling DSDT ---" 
../iasl/iasl.exe -tc "./EFI/WIP/ACPI/DSDT.dsl"
Write-Output "--- Copying used SSDT to OC ---"
Get-ChildItem -Path ".\EFI\OC\ACPI" -Filter DSDT.aml | ForEach-Object {
  $filename = "$($_.BaseName)$($_.Extension)"
  Write-Output "Copying $filename"
  Copy-Item ".\EFI\WIP\ACPI\$filename" -Destination ".\EFI\OC\ACPI\$filename" -Verbose -Force
}