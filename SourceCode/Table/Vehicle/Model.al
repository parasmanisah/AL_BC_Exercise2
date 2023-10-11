table 50101 Model
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Model ID"; Code[40])
        {
            DataClassification = CustomerContent;

        }

        field(2; "Vehicle Model"; Code[40])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Manufacture Year"; Date)
        {
            DataClassification = CustomerContent;
        }

        field(4; "Vehicle Type"; Enum "Vehicle Type")
        {
            DataClassification = CustomerContent;
        }
        field(5; Cost; Decimal)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Custom Duty" := (5 / 100) * Cost;
                VAT := (18 / 100) * Cost;
                "Excies Duty" := (3 / 100) * Cost;
                "Profit Margin" := Cost - ("Custom Duty" + VAT + "Excies Duty");
            end;
        }
        field(6; "Custom Duty"; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(7; "Excies Duty"; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(8; VAT; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(9; "Profit Margin"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(10; "No. Series"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(11; "Condition Validation"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = ,isGood,isBad;
        }

    }

    keys
    {
        key(Key1; "Model ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        "No. Series": Code[20];

    trigger OnInsert()
    var
        ModelNum: Record "Sales & Receivables Setup";
        NoSeriesMgnt: Codeunit NoSeriesManagement;
    begin

        if "Model ID" = '' then begin
            ModelNum.Get();
            NoSeriesMgnt.InitSeries(ModelNum."Model ID", ModelNum."Model ID", 0D, "Model ID", "No. Series");
        end;

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