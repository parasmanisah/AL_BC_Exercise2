report 50100 "Loan Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './SourceCode/Report/Loan Report.rdl';


    dataset
    {
        dataitem(DataItemName; Loan)
        {
            RequestFilterFields = Loan_ID;
            column(Loan_ID; Loan_ID) { }
            column(Description; Description) { }
            column(Loan_Amount; Loan_Amount) { }
            column(Loan_End_Date; Loan_End_Date) { }
            column(Loan_Start_Date; Loan_Start_Date) { }
            column(Bank_Account; Bank_Account) { }
            column(Bank_Name; Bank_Name) { }

        }
    }






    var
        myInt: Integer;
}