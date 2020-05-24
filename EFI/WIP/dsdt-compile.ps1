Write-Output "--- Compiling DSDT ---" 
../../../iasl/iasl.exe -tc ".\ACPI\DSDT.dsl"
Write-Output "--- Copying used SSDT to OC ---"
Get-ChildItem -Path "..\OC\ACPI" -Filter DSDT.aml | ForEach-Object {
  $filename = "$($_.BaseName)$($_.Extension)"
  Write-Output "Copying $filename"
  Copy-Item ".\ACPI\$filename" -Destination "..\OC\ACPI\$filename" -Verbose -Force
}