page 90208 DataType
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    Var
        Number: Integer;

    local procedure MyProcedure(LoopNo: Integer; YesorNo: Boolean; Amount: Decimal; WhenWasIt: Date; Color: Option): Integer
    begin
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo);
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'When Was It', "WhenWasIt");
        Message('The value of %1 is %2', 'Color', Color);
    end;

    // space
}
// actions
// {
//    area(Processing)
// {
// action(ActionName)
//{
//  ApplicationArea = All;

//  trigger OnAction()
// begin

// end;
//}
// }
//  }

// var
// myInt: Integer;
//}