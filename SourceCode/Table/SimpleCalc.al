table 50130 SimpleCalc
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Pk; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(2; Num1; Decimal)
        {
            DataClassification = CustomerContent;

        }
        field(3; Num2; Decimal)
        {
            DataClassification = CustomerContent;

        }
        field(4; Result; Decimal)
        {
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(Key1; Pk)
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