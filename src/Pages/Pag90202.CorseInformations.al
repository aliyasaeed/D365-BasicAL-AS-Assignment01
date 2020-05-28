page 90202 "ASM Course Informations"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    CardPageId = "Course Information";
    SourceTable = "ASM Course";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
                field(Type; Type) { ApplicationArea = All; }
                field(Duration; Duration) { ApplicationArea = All; }
                field(InstructorCode; InstructorCode) { ApplicationArea = All; }
                field(Price; Price) { ApplicationArea = All; }
                field(Difficulty; Difficulty) { ApplicationArea = All; }
            }
        }
    }
}