tableextension 50200 "BCL BSB Book" extends "BSB Book"
{
    fields
    {
        // Add changes to table fields here
        Field(50200; "No. of Customer Likes"; Integer)
        {
            Caption = 'No. of Customer Likes';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Customer Where("BSB Favorite Book No." = Field("No.")));
        }
    }
}