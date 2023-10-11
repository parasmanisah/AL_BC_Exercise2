page 50102 "Vehicle Card"
{
    Caption = 'Vehicle Card';
    PageType = Card;
    SourceTable = Vehicle;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'Vehicle List Card';

                field("Vehicle ID"; Rec."Vehicle ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vehicle ID field.';
                }
                field("Model ID"; Rec."Model ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vehicle Model field.';
                }
                field("Vehicle Mode"; Rec."Vehicle Mode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vehicle Model field.';
                }
                field("Manufacture Year"; Rec."Manufacture Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacture Year field.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vehicle Type field.';
                }

                field("Custom Duty"; Rec."Custom Duty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Custom duty field.';
                }
                field("Excise Duty"; Rec."Excise Duty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacture Year field.';
                }
                field(VAT; Rec.VAT)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacture Year field.';
                }
                field("Profit Margin"; Rec."Profit Margin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacture Year field.';
                }
            }
        }
    }
}
