page 50139 Line_List
{
    PageType = ListPart;
    SourceTable = Line;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}