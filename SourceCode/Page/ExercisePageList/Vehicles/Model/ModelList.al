page 50101 "Model List"
{
    ApplicationArea = All;
    Caption = 'Model List';
    PageType = List;
    SourceTable = Model;
    UsageCategory = Administration;
    CardPageId = 50103;


    layout
    {
        area(content)
        {
            repeater("Vehicle List")
            {
                field("Model ID"; Rec."Model ID")
                {
                    ApplicationArea = All;
                }
                field("Vehicle Model"; Rec."Vehicle Model")
                {
                    ApplicationArea = All;
                }
                field("Manufacture Year"; Rec."Manufacture Year")
                {
                    ApplicationArea = All;
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                }
                field(Cost; Rec.Cost)
                {
                    ApplicationArea = All;
                }
                field("Custom Duty"; Rec."Custom Duty")
                {
                    ApplicationArea = All;
                }
                field("Excies Duty"; Rec."Excies Duty")
                {
                    ApplicationArea = All;
                }
                field(VAT; Rec.VAT)
                {
                    ApplicationArea = All;

                }
                field("Profit Margin"; Rec."Profit Margin")
                {
                    ApplicationArea = All;

                }
                field("Condition Validation"; Rec."Condition Validation")
                {
                    ApplicationArea = All;

                }

            }
        }
    }

}
