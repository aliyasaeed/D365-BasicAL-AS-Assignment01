table 90201 Example

{
    DrillDownPageID = "Sample List";

    LookupPageID = "Sample List";

    fields

    {
        field(1; "No."; Code[20])

        {
            trigger OnValidate();

            begin

                IF "No." <> xRec."No." THEN BEGIN

                    //    ExampleSetup.GET;

                    //     NoSeriesManagement.TestManual(ExampleSetup."Example Nos.");

                    "No. Series" := '';

                END;

            end;

        }

        field(2; Description; Text[50])

        {

        }

        field(3; "Example Type Code"; Code[20])

        {
            TableRelation = "Sample Type";

        }

        field(4; "No. Series"; Code[20])

        {

        }

    }

    keys

    {
        key(Key1; "No.")

        {
            Clustered = true;

        }

    }

    fieldgroups

    {

    }

    trigger OnInsert();

    begin

        IF "No." = '' THEN BEGIN

            //  ExampleSetup.GET;

            // ExampleSetup.TESTFIELD();

            //NoSeriesManagement.InitSeries(ExampleSetup."Example Nos.",

            //  xRec."No. Series",

            //  0D,

            //  "No.",

            //    "No. Series");

        END;

    end;

    var

        NoSeriesManagement: Codeunit NoSeriesManagement;
    //   ExampleSetup: Record "Example Setup";
    PROCEDURE AssistEdit(OldExample: Record Example): Boolean;

    var
        Example: Record Example;

    begin
        WITH Example DO BEGIN

            Example := Rec;

            // ExampleSetup.GET;

            // ExampleSetup.TESTFIELD("Example Nos.");

            //  IF NoSeriesManagement.SelectSeries(ExampleSetup."Example Nos.", OldExample."No. Series", "No. Series") THEN BEGIN

            NoSeriesManagement.SetSeries("No.");

            Rec := Example;

            EXIT(TRUE);

        END;

    END;

    //   end;

}

