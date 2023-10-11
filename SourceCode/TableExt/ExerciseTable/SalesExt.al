tableextension 50203 Sales_Header extends "Sales Header"
{
    fields
    {
        field(50204; Ext_Document_ID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}