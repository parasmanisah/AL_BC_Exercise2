pageextension 50215 TransferOrder extends "Transfer Order"
{
    layout
    {
        addafter("Transfer-to Code")
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