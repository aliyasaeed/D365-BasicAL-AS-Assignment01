table 90207 customerInfo
{
    DataClassification = ToBeClassified;
    Caption = 'Customer OverView';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Entry No.';

        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer No.';

        }
        field(3; "Customer Name"; text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';

        }
        field(4; "Source Code"; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source Code';

        }
        field(5; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount';

        }
        field(6; LastRunDate; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Last run Date';

        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}