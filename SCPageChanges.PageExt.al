pageextension 63000 SCItemCard extends "Item Card"
{
    layout
    {
        addafter("Purchasing Code")
        {
            field("No. 2"; "No. 2")
            {
                ApplicationArea = All;
                ToolTip = 'External item identifier';
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
            field(Indentation; Indentation)
            {
                ApplicationArea = All;
                ToolTip = 'Indentation';
            }
            field("Presentation Order"; "Presentation Order")
            {
                ApplicationArea = All;
                ToolTip = 'Presentation Order';
            }
            field("No. 2"; "No. 2")
            {
                ApplicationArea = All;
                ToolTip = 'External No';
            }
            field("Last Modified Date Time"; "Last Modified Date Time")
            {
                ApplicationArea = All;
                ToolTip = 'Last Modified Date Time';
            }
        }
    }
}

pageextension 63002 SCInvoiceLine extends "Sales Invoice Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Description 2"; "Description 2")
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
            field("Description 2"; "Description 2")
            {
                ApplicationArea = All;

                ToolTip = 'Unique Identifier from eCommerce';
            }

        }
    }
}