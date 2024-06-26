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
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                enabled = Rec."BSB Favorite Book No." <> '';
                image = Card;
                ToolTip = 'Ausführen';
                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
    }
}