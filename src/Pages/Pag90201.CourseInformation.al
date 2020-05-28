page 90201 "Course Information"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "ASM Course";

    layout
    {
        area(Content)
        {
            group(GroupName)
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