
table 90200 "ASM Course"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; Code; Code[20]) { }
        field(20; Name; Text[30]) { }
        field(30; Description; Text[30]) { }
        field(40; Type; Option)
        {
            OptionMembers = "E-Learning","Instructor LED","Remote Training";
        }
        field(50; Duration; Decimal) { }
        field(60; Price; Decimal) { }
        field(70; Active; Boolean) { }
        field(80; Difficulty; Integer) { }
        field(100; InstructorCode; Code[20]) { }
    }
    Keys
    {
        key(PK; Code) { }
    }
}






































