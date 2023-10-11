table 50134 Line
{
    DataClassification = CustomerContent;


    fields
    {
        field(1; Loan_ID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Loan;

        }
        field(2; Line_ID; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(3; Payment_Date; Date)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
                DateValidatiion: Record Loan;
            begin
                DateValidatiion.Get(Loan_ID);
                if not ((DateValidatiion.Loan_Start_Date >= Payment_Date) and (DateValidatiion.Loan_End_Date <= Payment_Date)) then begin

                    Error('The payment date should be between payment start date and payment end date!');
                end;
            end;
        }
        field(4; Payment_Amount; Decimal)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                myInt: Integer;
                GetLoanId: Record Line;
                GetLoanCard: Record Loan;
                TotalPaymentAmt: Decimal;
            begin
                GetLoanId.Reset();
                GetLoanId.SetRange(Loan_ID, Loan_ID);
                if GetLoanId.FindFirst() then begin
                    repeat
                        TotalPaymentAmt += GetLoanId.Payment_Amount;

                    until GetLoanId.Next() = 0;
                end;

                TotalPaymentAmt += Rec.Payment_Amount;
                GetLoanCard.Get(Rec.Loan_ID);

                if GetLoanCard.Loan_Amount < TotalPaymentAmt then begin
                    Error('Payment amount should not be greater than loan amount!');
                end;

            end;

        }
    }

    keys
    {
        key(Key1; Loan_ID, Line_ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;


    trigger OnInsert()
    var

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