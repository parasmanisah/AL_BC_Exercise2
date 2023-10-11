pageextension 50442 General_Ledger_Entries extends "General Ledger Entries"
{
    layout
    {
        addafter("Posting Date")
        {
            field(Field_ID; Rec.Field_ID)
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