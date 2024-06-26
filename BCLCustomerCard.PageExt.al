pageextension 50201 "BCL Customer Card" extends "Customer Card"
{
    actions
    {
        addlast(navigation)
        {
            // Add changes to page actions here
            action("BCL ShowBook")
            {
                ApplicationArea = All;
                Caption = 'Show Book', comment = 'NLB="Show Book"';
                enabled = Rec."BSB Favorite Book No." <> '';
                image = Card;
                ToolTip = 'Buch öffnen';
                // Promoted = true;
                // PromotedCategory = Process;
                // PromotedIsBig = true;
                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
        addlast(Category_Category9)
        {
            actionref("BCL ShowBook_Promoted"; "BCL ShowBook")
            {

            }
        }
    }
}