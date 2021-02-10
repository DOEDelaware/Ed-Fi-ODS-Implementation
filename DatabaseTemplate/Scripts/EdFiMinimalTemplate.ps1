# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

 # $params = @{
     # packageName    = "EdFi.Suite3.Ods.Minimal.Template"
     # packageVersion = "5.1.0"
     # packageSource  = "https://www.myget.org/F/ed-fi/"
 # }
 # We cannot reach myget from the database server.
 #The templates are in the repo, so I parsed the path to them and submitted it
$pathTemplates = (get-item "D:\edfiupgrade\repos51\Ed-Fi-ODS-Implementation\Scripts" ).parent.FullName + "\DatabaseTemplate"
 $params = @{
     packageName    = "EdFi.Suite3.Ods.Minimal.Template"
     packageVersion = "5.1.0"
     packageSource  = "$pathTemplates"
 }

& "$PSScriptRoot\..\Modules\get-populated-from-nuget.ps1" @params
