tableextension 50213 Transfer_Header extends "Transfer Header"
{
    fields
    {
        field(50214; Reciept_No; Code[20])
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}