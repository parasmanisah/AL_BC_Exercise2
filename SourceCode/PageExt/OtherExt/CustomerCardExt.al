pageextension 50208 Customer_Card extends "Customer Card"
{
    layout
    {
        addafter(Blocked)
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