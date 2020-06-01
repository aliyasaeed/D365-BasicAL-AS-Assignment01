table 90205 "Sample Type"

{

    // version EXT001 

    DataPerCompany = false;
    DrillDownPageID = "Sample Types";
    LookupPageID = "Sample Types";

    fields

    {
        field(1; "Code"; Code[20])

        {

        }

        field(2; Description; Text[50])

        {

        }
    }

    keys

    {
        key(Key1; "Code")

        {
            Clustered = true;

        }

    }

    fieldgroups

    {

    }

}