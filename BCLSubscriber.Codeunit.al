codeunit 50200 "BCL Subscriber"
{
    [EventSubscriber(ObjectType::Table, Database::"BSB Book", OnBeforeDeleteEvent, '', true, true)]
    local procedure OnBeforeDelete_BSBBook_FavoriteBookHint(var Rec: Record "BSB Book")
    var
        NoDeleteMsg: Label 'Gelikte Bücher nicht löschen!';
    begin
        Rec.CalcFields("No. of Customer Likes");
        if Rec."No. of Customer Likes" <> 0 then
            error(NoDeleteMsg);
    end;
}