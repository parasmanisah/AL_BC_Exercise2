page 50138 Loan_Card
{
    PageType = Card;
    SourceTable = Loan;

    layout
    {
        area(Content)
        {
            group("Loan Details")
            {
                field(Loan_ID; Rec.Loan_ID)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Loan_Amount; Rec.Loan_Amount)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Loan_Start_Date; Rec.Loan_Start_Date)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Loan_End_Date; Rec.Loan_End_Date)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Bank_Account; Rec.Bank_Account)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Bank_Name; Rec.Bank_Name)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Paid_Amount; Rec.Paid_Amount)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    Editable = not rec.Posted;

                }
            }
            part(Lines; Line_List)
            {
                ApplicationArea = All;
                SubPageLink = Loan_ID = field(Loan_ID);
                Editable = not rec.Posted;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Clear Loan")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec.Loan_Amount = Rec.Paid_Amount then begin
                        Rec.Posted := true;

                        Message('Thank You! Loan is cleared.');
                        CurrPage.Update();
                    end
                    else begin
                        Message('Error! Please pay remaining amount.');
                    end;

                end;
            }
        }
    }

    var
        myInt: Integer;
}