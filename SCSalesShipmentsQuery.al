query 63003 "SC Sales Shipments"
{
    QueryType = API;
    APIPublisher = 'EthanSorenson';
    APIGroup = 'SCAPI';
    APIVersion = 'v1.0';
    EntityName = 'SCSalesShipment';
    EntitySetName = 'SCSalesShipments';

    elements
    {
        dataitem(ShipLine; "Sales Shipment Line")
        {
            DataItemTableFilter = Type = FILTER(Item);
            column(ShipLine_Entry_No; "Item Shpt. Entry No.") { }
            column(ShipLine_Item_No; "No.") { }
            column(ShipLine_Order_No; "Order No.") { }
            column(ShipLine_Order_Line_No; "Order Line No.") { }
            column(ShipLine_Item_Reference_No; "Item Reference No.") { }
            column(ShipLine_SystemModifiedAt; SystemModifiedAt) { }
            column(ShipLine_SystemCreatedAt; SystemCreatedAt) { }
            column(ShipLine_Quantity; Quantity) { }
            column(ShipLine_Description; "Description") { }
            column(ShipLine_Description_2; "Description 2") { }
            column(ShipLine_eComemrce_Id; "eCommerce id") { }
            column(ShipLine_location_code; "Location Code") { }
            dataitem(ShipHeader; "Sales Shipment Header")
            {
                SqlJoinType = InnerJoin;
                DataItemLink = "No." = ShipLine."Document No.";
                column(ShipHeader_Package_Tracking_No; "Package Tracking No.") { }
                column(ShipHeader_Shipping_Agent_Code; "Shipping Agent Code") { }
                column(ShipHeader_Shipping_Agent_Service_Code; "Shipping Agent Service Code") { }
                column(ShipHeader_Shipment_Date; "Shipment Date") { }
                column(ShipHeader_Requested_Delivery_Date; "Requested Delivery Date") { }
                column(ShipHeader_Promised_Delivery_Date; "Promised Delivery Date") { }
                column(ShipHeader_External_Document_No; "External Document No.") { }
                column(ShipHeader_Your_Reference; "Your Reference") { }
                dataitem(ShipAgent; "Shipping Agent")
                {
                    SqlJoinType = LeftOuterJoin;
                    DataItemLink = "Code" = ShipHeader."Shipping Agent Code";
                    column(ShipAgent_Name; Name) { }
                    dataitem(ShipAgentService; "Shipping Agent Services")
                    {
                        SqlJoinType = LeftOuterJoin;
                        DataItemLink = "Code" = ShipHeader."Shipping Agent Service Code", "Shipping Agent Code" = ShipHeader."Shipping Agent Code";
                        column(ShipAgentService_Description; Description) { }
                        dataitem(Location; Location)
                        {
                            SqlJoinType = LeftOuterJoin;
                            DataItemLink = "Code" = ShipLine."Location Code";
                            column(Location_External_No; "External No.") { }
                        }
                    }
                }
            }
        }
    }
}