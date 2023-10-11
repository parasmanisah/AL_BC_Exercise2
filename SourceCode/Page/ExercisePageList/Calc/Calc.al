page 50125 Calc
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SimpleCalc;

    layout
    {
        area(Content)
        {
            group("Simple Calculator")
            {
                field(Num1; Rec.Num1)
                {
                    ApplicationArea = All;

                }
                field(Num2; Rec.Num2)
                {
                    ApplicationArea = All;

                }
                field(Result; Rec.Result)
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
            action(Adds)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    calc: Codeunit CalcCode;
                begin
                    Rec.Result := calc.Adds(Rec.Num1, Rec.Num2);
                    Rec.Modify();

                end;
            }
            action(Subtract)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    calc2: Codeunit CalcCode;
                begin
                    if rec.Num1 > Rec.Num2 then begin
                        Rec.Result := calc2.Subtract(Rec.Num1, Rec.Num2);
                        Rec.Modify();
                    end
                    else begin
                        Message('Faild! number 1 is smaller than number 2.')
                    end;
                end;
            }
            action(Multiply)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    calc3: Codeunit CalcCode;
                begin
                    Rec.Result := calc3.Multiply(Rec.Num1, Rec.Num2);
                    Rec.Modify();

                end;
            }
            action(Divide)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    calc3: Codeunit CalcCode;
                begin
                    Rec.Result := calc3.Divide(Rec.Num1, Rec.Num2);
                    Rec.Modify();

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Clear(rec);
    end;

    var
        myInt: Integer;
}