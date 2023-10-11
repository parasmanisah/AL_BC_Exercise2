tableextension 50236 MyExtension extends "Purchase Header"
{
    fields
    {
        field(50238; Field_ID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}