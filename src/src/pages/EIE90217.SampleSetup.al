page 90217 "Sample Setup"

{

    PageType = Card;
    SourceTable = "SampleSetup";

    layout

    {
        area(content)

        {
            group(General)

            {
                field("Example Nos."; "Example Nos.")

                {
                    ApplicationArea = All;

                }

            }

        }

    }

    actions

    {
        area(processing)
        {

        }

    }

    trigger OnOpenPage();
    begin

        IF NOT GET THEN INSERT;
    end;

}