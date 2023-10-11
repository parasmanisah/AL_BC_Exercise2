tableextension 50120 "Customer Table" extends Customer
{
    fields
    {
        field(5030; District; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(5031; Provience; Text[5])
        {
            DataClassification = CustomerContent;
        }
        field(50201; Ext_Document_ID; Code[20])
        {
            DataClassification = CustomerContent;

        }

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}