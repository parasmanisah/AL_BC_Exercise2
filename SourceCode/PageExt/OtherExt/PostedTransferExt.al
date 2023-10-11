pageextension 50220 Posted_Transfer_Receipt extends "Posted Transfer Receipt"
{
    layout
    {
        addafter("Posting Date")
        {
            field(Reciept_No; Rec.Reciept_No)
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