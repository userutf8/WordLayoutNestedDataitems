report 55200 "Item Features"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'ItemFeatures_v1.docx';

    dataset
    {
        dataitem(Item; Item)
        {
            column(ItemNo; "No.")
            {
                IncludeCaption = true;
            }
            column(ItemDescription; Description)
            {
                IncludeCaption = true;
            }

            dataitem(ItemFeature; "Item Feature")
            {
                DataItemLink = "Item No." = field("No.");
                column(FeatureCode; Code)
                {
                    IncludeCaption = true;
                }
                column(FeatureDesription; Description)
                {
                    IncludeCaption = true;
                }
            }

            trigger OnAfterGetRecord()
            var
                ItemFeature: Record "Item Feature";
            begin
                ItemFeature.SetRange("Item No.", "No.");
                if ItemFeature.IsEmpty() then
                    CurrReport.Skip();
            end;
        }
    }
}