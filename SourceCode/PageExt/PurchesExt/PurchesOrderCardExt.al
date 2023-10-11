pageextension 50240 Purches_Order extends "Purchase Order"
{
    layout
    {
        addafter("Vendor Shipment No.")
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