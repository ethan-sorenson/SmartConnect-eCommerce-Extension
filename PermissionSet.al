permissionset 63000 "SmartConnect eComm"
{
    Assignable = true;
    Caption = 'SmartConnect eCommerce Extension';
    Permissions =
        query "SC Credit Memos Query" = X,
        query "SC Customer Payments Query" = X,
        query "SC Item Inv. Level By Location" = X,
        page "SC Shipping Address" = X;
}