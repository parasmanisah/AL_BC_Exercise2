tableextension 50108 "ID_Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(501; "Vehicle ID"; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(502; "Model ID"; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(503; Loan_ID; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}