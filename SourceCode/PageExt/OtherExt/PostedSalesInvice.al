pageextension 50210 Posted_Sales_Invoice extends "Posted Sales Invoice"
{
    layout
    {
        addafter("External Document No.")
        {
            field(Ext_Document_ID; Rec.Ext_Document_ID)
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