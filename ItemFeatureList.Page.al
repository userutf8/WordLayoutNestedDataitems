page 55200 "Item Feature List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 55200;
    Caption = 'Item Features';
    SaveValues = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                    ToolTip = 'Specifies the Code.';
                }

                field(ItemNo; Rec."Item No.")
                {
                    Caption = 'Item No.';
                    ToolTip = 'Specifies the Item Number.';
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ToolTip = 'Specifies the Description.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PrintWithItems)
            {
                Caption = 'Print with Items';
                ToolTip = 'Run report Item Features.';
                RunObject = report "Item Features";
            }
        }
    }
}