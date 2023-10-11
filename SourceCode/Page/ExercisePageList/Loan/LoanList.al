page 50137 Loan_List
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Loan;
    CardPageId = Loan_Card;
    Editable = false;
    SourceTableView = where(Posted = const(false));

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Loain_ID; Rec.Loan_ID)
                {
                    ApplicationArea = All;

                }
                field(Loan_Amount; Rec.Loan_Amount)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Loan_Start_Date; Rec.Loan_Start_Date)
                {
                    ApplicationArea = All;

                }
                field(Loan_End_Date; Rec.Loan_End_Date)
                {
                    ApplicationArea = All;

                }
                field(Bank_Account; Rec.Bank_Account)
                {
                    ApplicationArea = All;

                }
                field(Bank_Name; Rec.Bank_Name)
                {
                    ApplicationArea = All;

                }
                field(Paid_Amount; Rec.Paid_Amount)
                {
                    ApplicationArea = All;

                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin

    end;

}