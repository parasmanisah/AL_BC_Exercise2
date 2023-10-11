tableextension 50229 Sales_Line extends "Sales Line"
{
    fields
    {
        field(50230; Partner_Product_No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}