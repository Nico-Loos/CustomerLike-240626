codeunit 50200 "BCL Subscriber"
{
    var
        OnBeforeOnDeleteBookErr: Label 'Gelikte Bücher nicht löschen!';

    [EventSubscriber(ObjectType::Table, Database::"BSB Book", OnBeforeOnDelete, '', true, true)]
    local procedure OnBeforeOnDelete_BSBBook_FavoriteBookHint(var Rec: Record "BSB Book"; var IsHandled: Boolean)
    var
        Customer: Record Customer;
    begin
        if IsHandled then
            exit;

        // Rec.CalcFields("BCL No. of Customer Likes");
        // if Rec."BCL No. of Customer Likes" <> 0 then
        Customer.SetCurrentKey("BSB Favorite Book No.");
        Customer.SetRange("BSB Favorite Book No.", Rec."No.");
        if not Customer.IsEmpty then
            error(OnBeforeOnDeleteBookErr);
        IsHandled := true;
    end;
}