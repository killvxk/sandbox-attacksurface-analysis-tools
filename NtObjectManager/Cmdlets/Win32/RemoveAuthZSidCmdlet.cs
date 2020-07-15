﻿//  Copyright 2020 Google Inc. All Rights Reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

using NtApiDotNet;
using NtApiDotNet.Win32.Security.Authorization;
using System.Management.Automation;

namespace NtObjectManager.Cmdlets.Win32
{
    /// <summary>
    /// <para type="synopsis">Removes a SID from the AuthZ context..</para>
    /// <para type="description">This cmdlet allows you to removes SIDs from an AuthZ context. You can specify
    /// normal, restricted or device SIDs.</para>
    /// </summary>
    /// <example>
    ///   <code>Remove-AuthZSid $ctx -Sid "WD"</code>
    ///   <para>Removes the World SID from the normal groups in the context.</para>
    /// </example>
    /// <example>
    ///   <code>Remove-AuthZSid $ctx -Sid "WD" -SidType Restricted</code>
    ///   <para>Removes the World SID from the restricted SID groups in the context.</para>
    /// </example>
    [Cmdlet(VerbsCommon.Remove, "AuthZSid")]
    public class RemoveAuthZSidCmdlet : PSCmdlet
    {
        /// <summary>
        /// <para type="description">Specify the AuthZ Client Context.</para>
        /// </summary>
        [Parameter(Mandatory = true, Position = 0)]
        public AuthZContext Context { get; set; }

        /// <summary>
        /// <para type="description">Specify the Sids to Remove.</para>
        /// </summary>
        [Parameter(Mandatory = true, Position = 1)]
        public Sid[] Sid { get; set; }

        /// <summary>
        /// <para type="description">Specify the the type of SIDs to remove.</para>
        /// </summary>
        [Parameter(Position = 2)]
        public AuthZGroupSidType SidType { get; set; }

        /// <summary>
        /// Constructor.
        /// </summary>
        public RemoveAuthZSidCmdlet()
        {
            SidType = AuthZGroupSidType.Normal;
        }

        /// <summary>
        /// Process record.
        /// </summary>
        protected override void ProcessRecord()
        {
            Context.ModifyGroups(SidType, Sid, AuthZSidOperation.Delete);
        }
    }
}
