DefinitionBlock("", "SSDT", 2, "ACDT", "GPI0", 0)
{
    External(OSYS, FieldUnitObj)
    External(SDM1, FieldUnitObj)
    External(SDM0, FieldUnitObj)
    
    External(SBRG, FieldUnitObj)
    External(GPEN, FieldUnitObj)

    External(SDS0, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            OSYS = 0x07DC
            SDM1 = Zero
            SDM0 = Zero

            // Voodoo GPIO patch
            SBRG = One
            GPEN = One

            Printf("DUONG: OSYS: %o", OSYS)
            Printf("DUONG: SDM0: %o", SDM0)
            Printf("DUONG: SDM1: %o", SDM1)
            Printf("DUONG: SBRG: %o", SBRG)
            Printf("DUONG: GPEN: %o", SBRG)
            Printf("DUONG: SDS0: %o", SDS0)
        }
    }
}