table 50100 Vehicle
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Vehicle ID"; Code[40])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Model ID"; Code[40])
        {
            DataClassification = CustomerContent;
            TableRelation = Model."Model ID";

            trigger OnValidate()
            var
                myInt: Integer;
                Vehicle: Record Model;
            begin

                Vehicle.Get("Model ID");
                "Vehicle Mode" := Vehicle."Vehicle Model";
                Rec.Validate("Manufacture Year", Vehicle."Manufacture Year");
                "Vehicle Type" := Vehicle."Vehicle Type";
                "Custom Duty" := Vehicle."Custom Duty";
                "Excise Duty" := Vehicle."Excies Duty";
                VAT := Vehicle.VAT;
                "Profit Margin" := Vehicle."Profit Margin";
            end;
        }

        field(3; "Vehicle Mode"; Code[100])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                Message('Vehicle Model');
            end;
        }
        field(4; "Manufacture Year"; Date)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                Message('Manufacture Year');
            end;
        }
        field(5; "Vehicle Type"; Enum "Vehicle Type")
        {
            DataClassification = CustomerContent;
        }

        field(6; "Custom Duty"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(7; "Excise Duty"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(8; "VAT"; Decimal)
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
    }

    keys
    {
        key(Key1; "Vehicle ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        "No. Series": Code[10];

    trigger OnInsert()
    var
        VehicleNum: Record "Sales & Receivables Setup";
        NoSeriesMgnt: Codeunit NoSeriesManagement;
    begin

        if "Vehicle ID" = '' then begin
            VehicleNum.Get();
            NoSeriesMgnt.InitSeries(VehicleNum."Vehicle ID", VehicleNum."Vehicle ID", 0D, "Vehicle ID", "No. Series");
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