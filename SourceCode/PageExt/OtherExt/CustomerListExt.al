pageextension 50100 "PS Customer List" extends "Customer List"
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
        addafter(CreateApprovalWorkflow)
        {
            action("FILTER INFO")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                    rec.SetFilter("Location Code", 'GELB', '');
                    Rec.SetFilter("Balance (LCY)", '>2000');
                    Page.RunModal(Page::"Filter Customer List", Rec)
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}