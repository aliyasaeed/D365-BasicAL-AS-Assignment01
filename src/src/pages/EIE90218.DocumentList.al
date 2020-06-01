page 90218 "Document List"

{
    PageType = List;
    Editable = false;
    SourceTable = "Document Header";
    CardPageId = "MyDocumentHeader";

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

                field("Document Date"; "Document Date")

                {
                    ApplicationArea = All;

                }

            }

        }

        area(factboxes)

        {

        }
    }
    actions

    {

    }

}