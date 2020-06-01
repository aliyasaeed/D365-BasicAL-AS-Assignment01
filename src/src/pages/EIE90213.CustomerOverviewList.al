page 90213 CustomerOverview
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Customer Overview';
    SourceTable = customer;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Entry No."; 'Entry No.')
                {
                    ApplicationArea = All;

                }
                field("Customer No."; 'Customer No.')
                {
                    ApplicationArea = All;

                }
                field("Customer Name"; 'Customer Name')
                {
                    ApplicationArea = All;

                }
                field("Source Code"; 'Source Code')
                {
                    ApplicationArea = All;

                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;

                }
                field(LastRunDate; 'LastRunDate')
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                Caption = 'Import Records';
                ApplicationArea = All;

                trigger OnAction()

                begin

                end;
            }
        }
    }
}