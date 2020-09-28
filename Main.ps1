<#
.SYNOPSIS
  Outputs data to a text file about PowerShell's status on a given system.
.DESCRIPTION
  The script stores all relevant data to be included in the report in variables. The data contained in these variables
  is then outputted to the PSInventory.txt file via re-direction. Asterisks added to aid in readability of report.
.NOTES
  AuthorName: mmeconi
  DateLastModified: September 25, 2020
  #>

Set-StrictMode -version latest

# Create variable for script output

$FilePath = "$home\Win213\labs\lab1\PSInventory.txt"

# Create variables to store report information

$Date = (Get-Date).ToString()
$Computer = "$env:computername"
$UserName = "$env:UserName"
$PSInstallDir = "$PSHome"
$PSVersion = "$($PSVersionTable.PSVersion)"
$MyProfile = Test-Path -path $profile

# Build Inventory Report

$Date >> "$FilePath"
'************************************************************************************' >> $FilePath
'PowerShell System Inventory' >> "$FilePath"
'************************************************************************************' >> $FilePath
"" >> $FilePath
"Computer Name: $Computer" >> $FilePath
"User Name: $UserName" >> $FilePath
"PowerShell Version: $PSVersion" >> $FilePath
"Current user profile installed: $MyProfile" >> $FilePath
"PowerShell Installation: $PSInstallDir" >> $FilePath
"" >> $FilePath
'************************************************************************************' >> $FilePath
