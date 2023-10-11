pageextension 50239 Purchase_Order_List extends "Purchase Order List"
{
    layout
    {
        addafter("No.")
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