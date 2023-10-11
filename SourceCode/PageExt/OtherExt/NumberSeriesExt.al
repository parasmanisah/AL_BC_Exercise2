pageextension 50103 MyExtension extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Direct Debit Mandate Nos.")
        {
            field("Vehicle ID"; Rec."Vehicle ID")
            {
                ApplicationArea = All;

            }
            field("Model ID"; Rec."Model ID")
            {
                ApplicationArea = All;

            }
            field(Loan_ID; Rec.Loan_ID)
            {
                ApplicationArea = All;

            }

        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}