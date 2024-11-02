table 55201 "Item Feature Detail"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Feature Code"; Code[20])
        {
        }
        field(2; Code; Code[20])
        {
        }
        field(3; Description; Text[128])
        {

        }
    }

    keys
    {
        key(PK; "Feature Code", Code)
        {
            Clustered = true;
        }
    }

}