pageextension 50211 Sales_Order extends "Sales Order"
{
    layout
    {
        addafter("External Document No.")
        {
            field(Ext_Document_ID; Rec.Ext_Document_ID)
            {
                ApplicationArea = All;
                Editable = false;

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