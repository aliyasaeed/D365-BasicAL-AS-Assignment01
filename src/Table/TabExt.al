
tableextension 90201 CustomerListExt extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50111; Twitter; Text[30]) { }
        field(50112; Instagram; Text[50]) { }
        field(50113; Linkedin; Text[50]) { }

    }
}

