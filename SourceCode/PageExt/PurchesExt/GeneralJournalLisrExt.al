pageextension 50446 General_Journal extends "General Journal"
{
    layout
    {
        addafter("Posting Date")
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