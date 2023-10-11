pageextension 50231 Sales_Order_Subform extends "Sales Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field(Partner_Product_No; Rec.Partner_Product_No)
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