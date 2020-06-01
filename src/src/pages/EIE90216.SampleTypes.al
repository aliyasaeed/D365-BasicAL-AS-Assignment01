page 90216 "Sample Types"

{

    PageType = List;
    SourceTable = "Sample Type";
    Editable = false;

    layout

    {
        area(content)

        {
            repeater(Group)

            {
                field("Code"; Code)

                {
                    ApplicationArea = All;

                }

                field(Description; Description)

                {
                    ApplicationArea = All;

                }

            }

        }

    }

    actions

    {

    }

}