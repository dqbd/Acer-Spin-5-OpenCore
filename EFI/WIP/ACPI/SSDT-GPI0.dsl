DefinitionBlock("", "SSDT", 2, "ACDT", "GPI0", 0)
{
    External(OSYS, FieldUnitObj)
    External(SBRG, FieldUnitObj)
    External(GPEN, FieldUnitObj)
    External(SDM1, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            OSYS = 0x07DF
            SBRG = One
            GPEN = One
            SDM1 = Zero
            Printf("DUONG: SBRG GPEN: %o %o %o %o", OSYS, SBRG, GPEN, SDM1)
        }
    }
}