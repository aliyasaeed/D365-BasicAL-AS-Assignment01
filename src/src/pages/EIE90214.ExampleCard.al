page 90214 "Example"

{
    PageType = Card;
    SourceTable = Example;

    layout

    {
        area(content)

        {
            group(General)

            {
                field("No."; "No.")

                {

                    ApplicationArea = All;

                    trigger OnAssistEdit();

                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;

                    end;

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

    }

    actions

    {
        area(processing)

        {

        }

    }

}