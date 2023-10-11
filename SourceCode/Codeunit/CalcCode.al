codeunit 50126 CalcCode
{
    trigger OnRun()
    var
        calc: Record SimpleCalc;
    begin
        calc.Result := 0;
        calc.Modify();
    end;

    procedure Adds(a: Integer; b: Integer): Integer
    begin
        exit(a + b);
        // calc.Result := add;
        // calc.Modify();
    end;

    procedure Subtract(a: Integer; b: Integer): Integer
    begin
        exit(a - b)
    end;

    procedure Multiply(a: Integer; b: Integer): Integer
    begin
        exit(a * b)
    end;


    procedure Divide(a: Integer; b: Integer): Integer
    begin
        exit(a / b)
    end;

    var
        myInt: Integer;
}