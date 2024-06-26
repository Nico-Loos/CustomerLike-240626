tableextension 50201 "BCL Customer" extends Customer
{
    fields
    {
        modify("BSB Favorite Book No.")
        {
            trigger OnAfterValidate()
            begin
                if ("BSB Favorite Book No." <> xRec."BSB Favorite Book No.") AND (CurrFieldNo > 0) then
                    modify();
            end;
        }
    }
    /// <summary>
    /// ShowCard.
    /// </summary>
    /// <param name="BookNo">Code[20].</param>
    procedure ShowFavoriteBook()
    var
        BSBBook: Record "BSB Book";
    begin
        BSBBook.ShowCard("BSB Favorite Book No.");
    end;
}