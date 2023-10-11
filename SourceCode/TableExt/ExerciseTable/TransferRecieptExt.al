tableextension 50216 Transfer_Receipt_Header extends "Transfer Receipt Header"
{
    fields
    {
        field(50221; Reciept_No; Code[20])
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}