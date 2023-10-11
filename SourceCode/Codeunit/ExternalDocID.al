codeunit 50212 Set_External_ID
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;


    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', false, false)]
    local procedure OnAfterValidateEventSellToCustomerNo(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)

    var
        Customer: Record Customer;
    begin
        Customer.Reset();
        Customer.SetRange("No.", Rec."Sell-to Customer No.");

        if Customer.FindFirst() then begin
            Rec.Ext_Document_ID := Customer.Ext_Document_ID;
            Rec.Modify();
        end;

    end;


    // [EventSubscriber(ObjectType::Table, Database::"Transfer Receipt Header", 'OnAfterCopyFromTransferHeader', '', false, false)]
    // local procedure MyProcedure(var Rec: Record "Transfer Receipt Header"; var xRec: Record "Transfer Receipt Header"; CurrFieldNo: Integer)

    // var
    //     RecieptNo: Record "Transfer Header";
    // begin
    //     RecieptNo.Reset();
    //     RecieptNo.SetRange("No.", rec."No.");

    //     if RecieptNo.FindFirst() then begin
    //         Rec.Reciept_No := RecieptNo.Reciept_No;
    //         Rec.Modify();
    //     end;
    // end;



    [EventSubscriber(ObjectType::Table, Database::"Transfer Receipt Header", 'OnAfterCopyFromTransferHeader', '', false, false)]
    local procedure Onaftercopyfromtransferheader(var TransferReceiptHeader: Record "Transfer Receipt Header"; TransferHeader: Record "Transfer Header")
    begin

        TransferReceiptHeader."Reciept_No" := TransferHeader."Reciept_No";

    end;



}