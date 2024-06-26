tableextension 50201 "BCL Customer" extends Customer
{
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