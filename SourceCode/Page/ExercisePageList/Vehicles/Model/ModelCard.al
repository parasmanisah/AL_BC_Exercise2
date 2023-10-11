page 50103 "Model Card"
{
    Caption = 'Model Card';
    PageType = Card;
    SourceTable = Model;

    layout
    {
        area(content)
        {
            group("Model List")
            {
                Caption = 'Model List Card';

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
                    ToolTip = 'Specifies the value of the Total Cost field.';
                }
                field("Condition Validation"; Rec."Condition Validation")
                {
                    ApplicationArea = All;

                }

            }
        }
    }
    actions
    {
        area(Processing)
        {

            action("Change to Bad")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    if Rec."Condition Validation" = Rec."Condition Validation"::isBad then
                        Error('This condition is already in bad condition')
                    else
                        Rec."Condition Validation" := Rec."Condition Validation"


                end;
            }
            action("Change to Good")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin


                end;
            }
        }
    }

}
