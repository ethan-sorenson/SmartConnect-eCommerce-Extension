codeunit 63009 "SC Upgrade Mgt"
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        AppInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(AppInfo);
        if AppInfo.DataVersion() < Version.Create(1, 0, 0, 8) then
            MigrateItemNo2ToECommerceId();
    end;

    local procedure MigrateItemNo2ToECommerceId()
    var
        Item: Record Item;
    begin
        Item.SetFilter("No. 2", '<>%1', '');
        if Item.FindSet(true) then
            repeat
                if Item."eCommerce Id" = '' then begin
                    Item."eCommerce Id" := CopyStr(Item."No. 2", 1, MaxStrLen(Item."eCommerce Id"));
                    Item.Modify(false);
                end;
            until Item.Next() = 0;
    end;
}
