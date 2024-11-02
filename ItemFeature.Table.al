table 55200 "Item Feature"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
        }
        field(2; "Item No."; Code[20])
        {
            TableRelation = Item;
        }
        field(3; Description; Text[128])
        {
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}