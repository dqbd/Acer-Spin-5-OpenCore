/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200430 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./EFI/OC/ACPI/SSDT-HPET.aml, Sun May 24 15:35:47 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000066 (102)
 *     Revision         0x02
 *     Checksum         0xCC
 *     OEM ID           "CORP"
 *     OEM Table ID     "HPET"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180105 (538444037)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)

    Name (\_SB.PCI0.LPCB.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,         // Address Base
            0x00000400,         // Address Length
            )
    })
}

