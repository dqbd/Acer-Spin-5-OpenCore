DefinitionBlock("", "SSDT", 2, "ACDT", "GPI0", 0)
{
    External(OSYS, FieldUnitObj)
    External(SDM1, FieldUnitObj)
    
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            OSYS = 0x07DC
            SDM1 = Zero

            Printf("DUONG: %o %o", OSYS, SDM1)

            If ((OSYS < 0x07DC))
            {
                Printf("DUONG: SBFI")
            }

            If ((SDM1 == Zero))
            {
                Printf("ConcatenateResTemplate (SBFB, SBFG)")
            }
            Printf("(ConcatenateResTemplate (SBFB, SBFI))")
        }
    }
}