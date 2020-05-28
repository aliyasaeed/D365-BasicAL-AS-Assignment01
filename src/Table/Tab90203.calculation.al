table 90203 calculationtable
{
    fields
    {
        field(1; MyField; Decimal)
        {
            Description = 'New field';
        }

        field(2; "No."; Code[20])
        {
            Description = 'Serial number of the service';
        }

        field(3; "Global Dimension 1 Filter"; Code[20])
        {
            FieldClass = FlowFilter;
        }

        field(4; "Global Dimension 2 Filter"; Code[20])
        {
            FieldClass = FlowFilter;
        }

        field(5; "Currency Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }

        field(6; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            WHERE("Customer No." = FIELD("No."),
            "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
            "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
            "Currency Code" = FIELD("Currency Filter")
            ));
        }

        field(7; "Amount upper bound"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = max ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            WHERE("Customer No." = FIELD("No."),
            "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
            "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
            "Currency Code" = FIELD("Currency Filter")
            ));
        }

        field(8; "Amount lower bound"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = min ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            WHERE("Customer No." = FIELD("No."),
            "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
            "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
            "Currency Code" = FIELD("Currency Filter")
            ));
        }

        field(9; "First entry"; Boolean)
        {
            CalcFormula = exist (Customer where(Payments = const(0),
                                                 "No." = field("No.")));
            FieldClass = FlowField;
            Caption = 'Specifies whether it is the customer''s first entry';
        }

        field(10; "Customer Balance"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup (Customer.Balance where("No." = field("No.")));
        }
    }
}