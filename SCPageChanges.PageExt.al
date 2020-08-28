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
        field(63000; "No. 2"; Text[10])
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