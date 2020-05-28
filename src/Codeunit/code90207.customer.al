codeunit 90207 Customerlaptop
{
    TableNo = Customer;
    trigger OnRun();
    begin
        CheckSize(Rec);
    end;

    procedure CheckSize(var Cust: Record Customer)
    begin


    end;
}