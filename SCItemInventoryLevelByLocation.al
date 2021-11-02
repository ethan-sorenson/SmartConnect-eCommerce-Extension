query 63002 "SC Item Inv. Level By Location"

{
    QueryType = API;
    APIPublisher = 'eOneSolutions';
    APIGroup = 'SC';
    APIVersion = 'v2.0';
    EntityName = 'ItemInventoryLevelQuantityByLocation';
    EntitySetName = 'ItemInventoryLevelQuantityByLocation';
    OrderBy = ascending(LocationCode), ascending(ItemNo);

    elements
    {
        dataitem(ItemLedger; "Item Ledger Entry")
        {
            DataItemTableFilter = "Location Code" = filter(<> '');
            column(ItemNo; "Item No.")
            {
            }

            column(LocationCode; "Location Code")
            {
            }
            column(Quantity; "Quantity")
            {
                Method = Sum;
            }
            dataitem(Location; "Location")
            {
                DataItemLink = "Code" = ItemLedger."Location Code";
                SqlJoinType = InnerJoin;
                column(LocationExternalNo; "External No.")
                {
                }
                dataitem(Item; "Item")
                {
                    DataItemLink = "No." = ItemLedger."Item No.";
                    SqlJoinType = InnerJoin;
                    column(ItemInventoryIdentifier; "Inventory Id")
                    {
                    }
                    column(ItemExternalIdentifier; "No. 2")
                    {
                    }
                }
            }
        }
    }
}