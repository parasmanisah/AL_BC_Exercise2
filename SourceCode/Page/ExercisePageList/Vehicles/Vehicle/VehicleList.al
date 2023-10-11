page 50100 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehicle;
    CardPageId = 50102;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Vehicle ID"; Rec."Vehicle ID")
                {
                    ApplicationArea = All;
                }
                field("Model ID"; Rec."Model ID")
                {
                    ApplicationArea = All;
                }
                field("Vehicle Mode"; Rec."Vehicle Mode")
                {
                    ApplicationArea = All;
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                }
                field("Manufacture Year"; Rec."Manufacture Year")
                {
                    ApplicationArea = All;
                }

                field("Custom Duty"; Rec."Custom Duty")
                {
                    ApplicationArea = All;
                }
                field("Excise Duty"; Rec."Excise Duty")
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
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}