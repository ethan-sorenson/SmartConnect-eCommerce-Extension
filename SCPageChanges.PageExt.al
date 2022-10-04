tableextension 63002 SCTabItem extends "Item"

{
    fields
    {
        field(63000; "Inventory Id"; Text[20])
        {
            Caption = 'Inventory Identifier';
        }
    }
}

pageextension 63000 SCItemCard extends "Item Card"
{
    layout
    {
        addafter("Purchasing Code")
        {
            field("No. 2"; Rec."No. 2")
            {
                ApplicationArea = All;
                ToolTip = 'External item identifier';
            }
        }
        addlast("InventoryGrp")
        {
            field("Inventory Id"; Rec."Inventory Id")
            {
                ApplicationArea = All;
                ToolTip = 'Inventory Identifier';
            }
        }
    }
}

tableextension 63001 SCTabItemCategory extends "Item Category"

{
    fields
    {
        field(63000; "No. 2"; Text[20])
        {
            Caption = 'No. 2';
        }
    }
}
pageextension 63001 SCItemCategory extends "Item Category Card"
{
    layout
    {
        addafter("Parent Category")
        {
            field(Indentation; Rec.Indentation)
            {
                ApplicationArea = All;
                ToolTip = 'Indentation';
            }
            field("Presentation Order"; Rec."Presentation Order")
            {
                ApplicationArea = All;
                ToolTip = 'Presentation Order';
            }
            field("No. 2"; Rec."No. 2")
            {
                ApplicationArea = All;
                ToolTip = 'External No';
            }
            field("Last Modified Date Time"; Rec."Last Modified Date Time")
            {
                ApplicationArea = All;
                ToolTip = 'Last Modified Date Time';
            }
        }
    }
}

tableextension 63004 SCTabSalesLine extends "Sales Line"

{
    fields
    {
        field(63000; "eCommerce Id"; Text[20])
        {
            Caption = 'eCommerce Identifier';
        }
    }
}

tableextension 63005 SCTabSalesInvLine extends "Sales Invoice Line"

{
    fields
    {
        field(63000; "eCommerce id"; Text[20])
        {
            Caption = 'eCommerce Identifier';
        }
    }
}

tableextension 63006 SCTabSalesCrLine extends "Sales Cr.Memo Line"

{
    fields
    {
        field(63000; "eCommerce id"; Text[20])
        {
            Caption = 'eCommerce Identifier';
        }
    }
}
pageextension 63002 SCInvoiceLine extends "Sales Invoice Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("eCommerce Id"; Rec."eCommerce id")
            {
                ApplicationArea = All;

                ToolTip = 'Unique Identifier from eCommerce';
            }

        }
    }
}

pageextension 63003 SCCreditMemoLine extends "Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("eCommerce Id"; Rec."eCommerce id")
            {
                ApplicationArea = All;

                ToolTip = 'Unique Identifier from eCommerce';
            }

        }
    }
}
tableextension 63003 SCLocation extends "Location"

{
    fields
    {
        field(63000; "External No."; Text[20])
        {
            Caption = 'External location identifier';
        }
    }
}
pageextension 63004 SCLocation extends "Location Card"
{
    layout
    {
        addlast(General)
        {
            field("External No."; Rec."External No.")
            {
                ApplicationArea = All;
                ToolTip = 'External location identifier';
            }
        }
    }
}

tableextension 63007 SCTabCustomer extends "Customer"

{
    fields
    {
        field(63000; "eCommerce Id"; Text[20])
        {
            Caption = 'eCommerce Id';
        }
    }
}

pageextension 63005 SCCustomerCard extends "Customer Card"
{
    layout
    {
        addafter("Salesperson Code")
        {
            field("eCommerce Id"; rec."eCommerce Id")
            {
                ApplicationArea = All;
                ToolTip = 'eCommerce external identifier';
            }
        }
    }
}