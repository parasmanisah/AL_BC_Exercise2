tableextension 50205 Sales_Invoice extends "Sales Invoice Header"
{
    fields
    {
        field(50206; Ext_Document_ID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}