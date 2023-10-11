report 50458 "Vehicle Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './SourceCode/Report/Vehicle Report.rdl';

    dataset
    {
        dataitem(DataItemName; Vehicle)
        {
            RequestFilterFields = "Vehicle ID";
            column(Vehicle_ID; "Vehicle ID") { }
            column(Vehicle_Type; "Vehicle Type") { }
            column(Vehicle_Mode; "Vehicle Mode") { }
            column(Model_ID; "Model ID") { }
            column(Manufacture_Year; "Manufacture Year") { }
            column(Custom_Duty; "Custom Duty") { }
            column(Excise_Duty; "Excise Duty") { }
            column(VAT; VAT) { }
            column(Profit_Margin; "Profit Margin") { }

        }
    }


    var
        myInt: Integer;
}