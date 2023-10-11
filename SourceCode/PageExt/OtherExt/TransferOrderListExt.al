pageextension 50222 TransferOrderList extends "Transfer Orders"
{
    layout
    {
        addafter("No.")
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