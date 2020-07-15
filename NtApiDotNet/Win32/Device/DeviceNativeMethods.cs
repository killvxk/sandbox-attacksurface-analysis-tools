﻿//  Copyright 2019 Google Inc. All Rights Reserved.
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

using System;
using System.Runtime.InteropServices;

namespace NtApiDotNet.Win32.Device
{
    internal enum CmGetDeviceInterfaceListFlags
    {
        Present = 0,
        AllDevices = 1,
    }

    internal enum CrError
    {
        SUCCESS = 0x00000000,
        DEFAULT = 0x00000001,
        OUT_OF_MEMORY = 0x00000002,
        INVALID_POINTER = 0x00000003,
        INVALID_FLAG = 0x00000004,
        INVALID_DEVNODE = 0x00000005,
        INVALID_RES_DES = 0x00000006,
        INVALID_LOG_CONF = 0x00000007,
        INVALID_ARBITRATOR = 0x00000008,
        INVALID_NODELIST = 0x00000009,
        DEVNODE_HAS_REQS = 0x0000000A,
        INVALID_RESOURCEID = 0x0000000B,
        DLVXD_NOT_FOUND = 0x0000000C,
        NO_SUCH_DEVNODE = 0x0000000D,
        NO_MORE_LOG_CONF = 0x0000000E,
        NO_MORE_RES_DES = 0x0000000F,
        ALREADY_SUCH_DEVNODE = 0x00000010,
        INVALID_RANGE_LIST = 0x00000011,
        INVALID_RANGE = 0x00000012,
        FAILURE = 0x00000013,
        NO_SUCH_LOGICAL_DEV = 0x00000014,
        CREATE_BLOCKED = 0x00000015,
        NOT_SYSTEM_VM = 0x00000016,
        REMOVE_VETOED = 0x00000017,
        APM_VETOED = 0x00000018,
        INVALID_LOAD_TYPE = 0x00000019,
        BUFFER_SMALL = 0x0000001A,
        NO_ARBITRATOR = 0x0000001B,
        NO_REGISTRY_HANDLE = 0x0000001C,
        REGISTRY_ERROR = 0x0000001D,
        INVALID_DEVICE_ID = 0x0000001E,
        INVALID_DATA = 0x0000001F,
        INVALID_API = 0x00000020,
        DEVLOADER_NOT_READY = 0x00000021,
        NEED_RESTART = 0x00000022,
        NO_MORE_HW_PROFILES = 0x00000023,
        DEVICE_NOT_THERE = 0x00000024,
        NO_SUCH_VALUE = 0x00000025,
        WRONG_TYPE = 0x00000026,
        INVALID_PRIORITY = 0x00000027,
        NOT_DISABLEABLE = 0x00000028,
        FREE_RESOURCES = 0x00000029,
        QUERY_VETOED = 0x0000002A,
        CANT_SHARE_IRQ = 0x0000002B,
        NO_DEPENDENT = 0x0000002C,
        SAME_RESOURCES = 0x0000002D,
        NO_SUCH_REGISTRY_KEY = 0x0000002E,
        INVALID_MACHINENAME = 0x0000002F,
        REMOTE_COMM_FAILURE = 0x00000030,
        MACHINE_UNAVAILABLE = 0x00000031,
        NO_CM_SERVICES = 0x00000032,
        ACCESS_DENIED = 0x00000033,
        CALL_NOT_IMPLEMENTED = 0x00000034,
        INVALID_PROPERTY = 0x00000035,
        DEVICE_INTERFACE_ACTIVE = 0x00000036,
        NO_SUCH_DEVICE_INTERFACE = 0x00000037,
        INVALID_REFERENCE_STRING = 0x00000038,
        INVALID_CONFLICT_LIST = 0x00000039,
        INVALID_INDEX = 0x0000003A,
        INVALID_STRUCTURE_SIZE = 0x0000003B,
    }

    internal enum CmEnumerateClassesFlags
    {
        Installer = 0,
        Interface = 1,
    }

    internal static class DeviceNativeMethods
    {
        [DllImport("cfgmgr32.dll", CharSet = CharSet.Unicode)]
        internal static extern CrError CM_Get_Device_Interface_List(ref Guid InterfaceClassGuid, string pDeviceID, 
            [Out] char[] Buffer, int BufferLen, CmGetDeviceInterfaceListFlags ulFlags);

        [DllImport("CfgMgr32.dll", CharSet = CharSet.Unicode)]
        internal static extern CrError CM_Get_Device_Interface_List_Size(out int pulLen, ref Guid InterfaceClassGuid, 
            string pDeviceID, CmGetDeviceInterfaceListFlags ulFlags);

        [DllImport("CfgMgr32.dll", CharSet = CharSet.Unicode)]
        internal static extern CrError CM_Enumerate_Classes(int ulClassIndex, ref Guid ClassGuid, CmEnumerateClassesFlags ulFlags);
    }
}
