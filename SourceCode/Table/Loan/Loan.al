table 50102 Loan
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Loan_ID; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; Loan_Amount; Decimal)
        {
            //DataClassification = CustomerContent;
            // FieldClass = FlowField;
            // CalcFormula = sum(Line.Payment_Amount where(Loan_ID = field(Loan_ID)));
        }
        field(4; Loan_Start_Date; Date)
        {
            DataClassification = CustomerContent;
        }
        field(5; Loan_End_Date; Date)
        {
            DataClassification = CustomerContent;
        }
        field(6; Bank_Account; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Bank Account";
        }
        field(7; Bank_Name; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Bank Account".Name where("No." = field(Bank_Account)));
        }
        field(8; Paid_Amount; Decimal)
        {
            //DataClassification = CustomerContent;
            FieldClass = FlowField;
            CalcFormula = sum(Line.Payment_Amount where(Loan_ID = field(Loan_ID)));
        }
        field(9; Posted; Boolean)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

    }


    keys
    {
        key(Key1; Loan_ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        "No. Series": Code[20];

    trigger OnInsert()
    var
        LoanNum: Record "Sales & Receivables Setup";
        NoSeriesMgnt: Codeunit NoSeriesManagement;

    begin
        if Loan_ID = '' then begin
            LoanNum.Get();
            NoSeriesMgnt.InitSeries(LoanNum.Loan_ID, LoanNum.Loan_ID, 0D, Loan_ID, "No. Series");
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