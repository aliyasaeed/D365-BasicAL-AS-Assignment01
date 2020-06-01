page 90215 "Sample List"

{

    // CardPageID = "Example List ";

    Editable = false;
    PageType = List;
    SourceTable = Example;

    layout

    {
        area(content)

        {
            repeater(Group)

            {
                field("No."; "No.")

                {
                    ApplicationArea = All;
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Example Type Code"; "Example Type Code")

                {
                    ApplicationArea = All;

                }

            }

        }

        area(factboxes)

        {
            systempart(Control7; Notes)

            {
                ApplicationArea = All;

            }
            systempart(Control8; Links)

            {
                ApplicationArea = All;

            }

        }

    }

    actions

    {
        area(navigation)

        {

        }

    }

}