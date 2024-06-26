pageextension 50200 "BCL BSB Book Factbox" extends "BSB Book Factbox"
{
    layout
    {
        addlast(Content)
        {
            field("BCL No. of Customer Likes"; Rec."BCL No. of Customer Likes")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the No. of Customer Likes.', Comment = '%';
                //TODO Feld wird nicht aktualisiert
            }
        }
    }
}