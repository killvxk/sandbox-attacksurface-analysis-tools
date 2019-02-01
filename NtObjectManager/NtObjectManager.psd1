﻿#  Copyright 2016 Google Inc. All Rights Reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

@{

# Script module or binary module file associated with this manifest.
RootModule = 'NtObjectManager.psm1'

# Version number of this module.
ModuleVersion = '1.1.17'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'ac251c97-67a6-4bc4-bb8a-5ae300e93030'

# Author of this module
Author = 'James Forshaw'

# Company or vendor of this module
CompanyName = 'Google Inc.'

# Copyright statement for this module
Copyright = '(c) 2016, 2017, 2018 Google Inc. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This module adds a provider and cmdlets to access the NT object manager namespace.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.5'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Formatters.ps1xml'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-AccessibleAlpcPort', 'Set-NtTokenPrivilege',
          'Set-NtTokenIntegrityLevel', 'Get-NtProcessMitigations', 'New-NtKernelCrashDump', 'New-NtObjectAttributes',
          'New-NtSecurityQualityOfService', 'Get-NtLicenseValue', 'Get-NtSystemEnvironmentValue', 'New-Win32Process',
          'New-NtEaBuffer', 'New-NtSectionImage', 'New-Win32ProcessConfig', 'Get-NtTokenFromProcess', 'Get-ExecutableManifest',
          'New-NtProcess', 'New-NtProcessConfig', 'Get-NtFilePath', 'Show-NtTokenEffective', 'Show-NtSecurityDescriptor', 'Get-NtIoControlCode',
          'Import-NtObject', 'Export-NtObject', 'Get-ExecutionAlias', 'New-ExecutionAlias', 'Show-NtToken', 'Show-NtSection',
          'Resolve-NtObjectAddress', 'Invoke-NtToken', 'Get-NtSecurityDescriptor',
          'Set-NtSecurityDescriptor', 'Add-NtVirtualMemory', 'Get-NtVirtualMemory', 'Remove-NtVirtualMemory', 'Set-NtVirtualMemory',
          'Read-NtVirtualMemory', 'Write-NtVirtualMemory', 'Get-EmbeddedAuthenticodeSignature', 'Get-NtSidName', 'New-SymbolResolver', 
          'New-NdrParser', 'Format-NdrComplexType', 'Format-NdrProcedure', 'Format-NdrComProxy', 'Get-NdrComProxy', 'Get-NdrRpcServerInterface',
          'Format-NdrRpcServerInterface', 'Get-NtMappedSection', 'Get-NtWnf', 'Get-NtCachedSigningLevel', 'Add-NtSecurityDescriptorDaclAce',
          'Get-NtFilePathType', 'New-NtType', 'Get-NtAlpcServer', 'Get-RpcEndpoint', 'Get-RpcServer', 'Set-GlobalSymbolResolver',
          'Get-RunningService', 'Copy-NtToken', 'Get-RpcAlpcServer', 'Get-NtObjectFromHandle', 'Start-Win32ChildProcess', 'Get-NtKeyValue',
          'Start-NtFileOplock', 'Format-RpcServer'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Add-NtKey', 'Get-NtDirectory', 'Get-NtEvent', 'Get-NtFile', 
               'Get-NtFileReparsePoint', 'Get-NtHandle', 'Get-NtKey', 'Get-NtMutant', 
               'Get-NtNamedPipeFile', 'Get-NtObject', 'Get-NtProcess', 
               'Get-NtSemaphore', 'Get-NtStatus', 'Get-NtSymbolicLink', 
               'Get-NtSymbolicLinkTarget', 'Get-NtThread', 'Get-NtToken', 'Get-NtType', 
               'New-NtDirectory', 'New-NtEvent', 'New-NtFile', 'New-NtKey', 
               'New-NtMailslotFile', 'New-NtMutant', 'New-NtNamedPipeFile', 
               'New-NtSecurityDescriptor', 'New-NtSemaphore', 'New-NtSymbolicLink', 
               'Remove-NtFileReparsePoint', 'Start-NtWait', 'Use-NtObject',
               'Get-NtSid', 'Get-NtSection', 'New-NtSection', 'Get-AccessibleAlpcPort',
               'Get-AccessibleKey', 'Get-AccessibleProcess', 'Get-AccessibleFile',
               'Get-AccessibleObject', 'Get-NtAccessMask', 'Get-AccessibleDevice',
               'Get-AccessibleNamedPipe', 'Get-NtGrantedAccess', 'Get-NtJob', 'New-NtJob',
               'Get-AccessibleService', 'Get-AccessibleHandle', 'Remove-NtKey', 'New-NtToken',
               'Remove-NtFile', 'Get-NtDirectoryChild', 'Get-NtKeyChild', 'Add-DosDevice', 
               'Remove-DosDevice', 'Get-NtFileChild', 'Set-NtFileReparsePoint',
               'Get-NtPartition', 'New-NtPartition', 'Get-NtWaitTimeout', 'New-NtTransaction', 
               'Get-NtTransaction', 'New-NtTransactionManager', 'Get-NtTransactionManager'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'security','defence','offence','sandbox'

        # A URL to the license for this module.
        LicenseUri = 'http://www.apache.org/licenses/LICENSE-2.0.html'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/google/sandbox-attacksurface-analysis-tools'

        # ReleaseNotes of this module
        ReleaseNotes = '1.1.17
------
* Added methods to get AppModel policy from a token.
* Added Start-Win32ChildProcess
* Default to a version of DbgHelp if installed to the NtObjectManager directory under x86 or x64.
* Added some setters to token properties.
* Added a fix for a memory corruption issue in getting NT type information on 32 bit platforms (from 1orenz0).
* Added option to parse out RPC clients in Get-RpcServer.
* Fixed performance issue with section viewer and the corrupter.
* Added a valid length property to NtMappedSection.
* Added Get-NtObjectFromHandle cmdlet.
* Added Copy-NtToken function.
* Added enumeration for device characteristics.
* Fixed path resolving for file paths.
* Added Get-RpcAlpcServer cmdlet.
'

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

