codeunit 50234 Parntner_Product_No
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeCopyFromItem', '', false, false)]
    local procedure OnFindItemVendOnAfterSetFilters(var SalesLine: Record "Sales Line"; var IsHandled: Boolean; Item: Record Item)
    begin
        SalesLine.Partner_Product_No := Item."Vendor Item No.";
    end;

    var
        myInt: Integer;
}