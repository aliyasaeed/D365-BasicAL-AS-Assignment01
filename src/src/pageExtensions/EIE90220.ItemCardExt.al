pageextension 90220 ItemCardExt extends "Item Card"
{

    actions
    {
        addafter(Functions)
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CalculateCost;
                trigger OnAction()
                begin

                end;
            }
            action(ExportItemPicture)
            {
                Caption = 'Export Item Picture';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CalculateCost;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var

}