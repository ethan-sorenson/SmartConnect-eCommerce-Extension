//Query Credit Memos including related Posted Invoice
query 63000 "SC Credit Memos Query"
{
    QueryType = API;
    APIPublisher = 'eOneSolutions';
    APIGroup = 'SC';
    APIVersion = 'v2.0';
    EntityName = 'SCCreditMemo';
    EntitySetName = 'SCCreditMemo';

    elements
    {
        dataitem(Header; "Sales Cr.Memo Header")
        {
            //General
            column(CreditMemoNo; "No.")
            {
                Caption = 'Credit Memo No';
            }
            column(DocumentDate; "Document Date")
            {
                Caption = 'Document Date';
            }
            column(PostingDate; "Posting Date")
            {
                Caption = 'Posting Date';
            }
            column(DueDate; "Due Date")
            {
                Caption = 'Due Date';
            }
            column(ExternalDocumentNo; "External Document No.")
            {
                Caption = 'External Document No.';
            }
            column(Amount; Amount)
            {
                Caption = 'Amount';
            }
            column(AmountIncludingVAT; "Amount Including VAT")
            {
                Caption = 'AmountIncludingVAT';
            }
            column(YourReference; "Your Reference")
            {
                Caption = 'Your Reference';
            }
            column(AppliestoDocType; "Applies-to Doc. Type")
            {
                Caption = 'Applies-to Doc. Type';
            }
            column(AppliestoDocNo; "Applies-to Doc. No.")
            {
                Caption = 'Applies-to Doc. No.';
            }
            column(ShortcutDimension1Code; "Shortcut Dimension 1 Code")
            {
                Caption = 'Shortcut Dimension 1 Code';
            }
            column(ShortcutDimension2Code; "Shortcut Dimension 2 Code")
            {
                Caption = 'Shortcut Dimension 2 Code';
            }
            //Credit Memo Details
            column(ShipmentMethodCode; "Shipment Method Code")
            {
                Caption = 'Shipment Method Code';
            }
            column(ShipmentDate; "Shipment Date")
            {
                Caption = 'Shipment Date';
            }
            column(LocationCode; "Location Code")
            {
                Caption = 'Location Code';
            }
            column(CurrencyCode; "Currency Code")
            {
                Caption = 'Currency Code';
            }
            column(PricesIncludingVAT; "Prices Including VAT")
            {
                Caption = 'Prices Including VAT';
            }
            column(VATBusPostingGroup; "VAT Bus. Posting Group")
            {
                Caption = 'VAT Bus. Posting Group';
            }
            column(PaymentTermsCode; "Payment Terms Code")
            {
                Caption = 'Payment Terms Code';
            }
            column(PaymentMethodCode; "Payment Method Code")
            {
                Caption = 'Payment Method Code';
            }
            column(PaymentDiscountPercent; "Payment Discount %")
            {
                Caption = 'Payment Discount %';
            }
            //Bill-to
            column(BilltoName; "Bill-to Name")
            {
                Caption = 'Bill-to Name';
            }
            column(BilltoName2; "Bill-to Name 2")
            {
                Caption = 'Bill-to Name 2';
            }
            column(BilltoAddress; "Bill-to Address")
            {
                Caption = 'Bill-to Address';
            }
            column(BilltoAddress2; "Bill-to Address 2")
            {
                Caption = 'Bill-to Address 2';
            }
            column(BilltoCity; "Bill-to City")
            {
                Caption = 'Bill-to City';
            }
            column(BilltoCounty; "Bill-to County")
            {
                Caption = 'Bill-to County';
            }
            column(BilltoPostCode; "Bill-to Post Code")
            {
                Caption = 'Bill-to Post Code';
            }
            column(BilltoCountryRegionCode; "Bill-to Country/Region Code")
            {
                Caption = 'Bill-to Country/Region Code';
            }
            column(BilltoContact; "Bill-to Contact")
            {
                Caption = 'Bill-to Contact';
            }
            column(BilltoContactNo; "Bill-to Contact No.")
            {
                Caption = 'Bill-to Contact No.';
            }
            column(BilltoCustomerNo; "Bill-to Customer No.")
            {
                Caption = 'Bill-to Customer No.';
            }
            dataitem(CreditMemoLine; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = Header."No.";
                SqlJoinType = LeftOuterJoin;
                column(ItemNo; "No.")
                {
                    Caption = 'Item No';
                }
                // column(ItemAttachedLineNo; "Appl.-from Item Entry")
                // {
                //     Caption = 'Item Attached Line No';
                // }
                // column(ItemType; "Type")
                // {
                //     Caption = 'Item Type';
                // }
                // column(ItemLineNo; "Line No.")
                // {
                //     Caption = 'Item Line No.';
                // }
                // column(ItemLocationCode; "Location Code")
                // {
                //     Caption = 'Item Location Code';
                // }
                // column(ItemDescription; Description)
                // {
                //     Caption = 'Item Description';
                // }
                // column(ItemQuantity; Quantity)
                // {
                //     Caption = 'Item Quantity';
                // }
                // column(ItemLineAmount; "Line Amount")
                // {
                //     Caption = 'Item Line Amount';
                // }
                // column(ItemUnitofMeasureCode; "Unit of Measure Code")
                // {
                //     Caption = 'Item Unit of Measure Code';
                // }
                // column(ItemUnitofMeasure; "Unit of Measure")
                // {
                //     Caption = 'Item Unit of Measure';
                // }
                // column(ItemUnitPrice; "Unit Price")
                // {
                //     Caption = 'Item Unit Price';
                // }
                // column(ItemLineDiscountPercent; "Line Discount %")
                // {
                //     Caption = 'Item Line Discount %';
                // }
                // column(ItemLineDiscountAmount; "Line Discount Amount")
                // {
                //     Caption = 'Item Line Discount Amount';
                // }
                // column(ItemShortcutDimension1Code; "Shortcut Dimension 1 Code")
                // {
                //     Caption = 'Item Shortcut Dimension 1 Code';
                // }
                // column(ItemShortcutDimension2Code; "Shortcut Dimension 2 Code")
                // {
                //     Caption = 'Item Shortcut Dimension 2 Code';
                // }
                // column(ItemEcommerceId; "eCommerce Id")
                // {
                //     Caption = 'Item eCommerce Id';
                // }
                dataitem(InvoiceHeader; "Sales Invoice Header")
                {
                    DataItemLink = "No." = Header."Applies-to Doc. No.";
                    SqlJoinType = LeftOuterJoin;
                    column(InvoiceExternalNo; "External Document No.")
                    {
                        Caption = 'Invoice External No.';
                    }
                    column(InvoiceYourReference; "Your Reference")
                    {
                        Caption = 'Invoice Your Reference';
                    }
                    dataitem(InvoiceLine; "Item Ledger Entry")
                    {
                        DataItemLink = "Entry No." = CreditMemoLine."Appl.-from Item Entry";
                        SqlJoinType = LeftOuterJoin;
                        column(InvoiceLineLineNo; "Document Line No.")
                        {
                            Caption = 'Invoice Line Line No.';
                        }
                        dataitem(SalesInvoiceLine; "Sales Invoice Line")
                        {
                            DataItemLink = "Line No." = InvoiceLine."Document Line No.";
                            SqlJoinType = LeftOuterJoin;
                            column(SalesInvoiceLine_eCommerce_Id; "eCommerce Id")
                            {
                                Caption = 'Invoice Line EcommerceId';
                            }
                        }
                    }
                }
            }
        }
    }
}