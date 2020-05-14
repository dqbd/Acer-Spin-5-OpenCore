DefinitionBlock("", "SSDT", 2, "ACDT", "GPI0", 0)
{
    External(SBRG, FieldUnitObj)
    External(GPEN, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            SBRG = One
            GPEN = One
        }
    }
}