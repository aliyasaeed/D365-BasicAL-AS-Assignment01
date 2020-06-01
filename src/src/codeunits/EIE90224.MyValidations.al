codeunit 90224 MyValidations
{
    procedure CheckForPlusSign(TextToVerify: Text)
    var
        myInt: Integer;
    begin
        if StrPos(TextToVerify, '+') <> 0 then
            Message('A + sign cannot be used');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure OnCustomerPageAddressValidate(var Rec: Record customer; var xRec: Record customer)

    begin
        CheckForPlusSign(Rec.Address);
    end;
}