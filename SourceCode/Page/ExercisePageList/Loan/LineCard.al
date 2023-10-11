page 50140 Lina_Card
{
    PageType = Card;
    SourceTable = Line;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Loan_ID; Rec.Loan_ID)
                {
                    ApplicationArea = All;

                }
                field(Line_ID; Rec.Line_ID)
                {
                    ApplicationArea = All;

                }
                field(Payment_Date; Rec.Payment_Date)
                {
                    ApplicationArea = All;



                }
                field(Payment_Amount; Rec.Payment_Amount)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}