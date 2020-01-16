namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class pagesUpdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PageModels", "Author", c => c.String(nullable: false));
            AddColumn("dbo.PageModels", "CreationDate", c => c.DateTime(nullable: false, precision: 7, storeType: "datetime2"));
            AddColumn("dbo.PageModels", "AdditionalContent", c => c.String());
            AlterColumn("dbo.PageModels", "HeadImageBase64", c => c.String(nullable: false));
            DropColumn("dbo.PageModels", "AditionalContent");
        }
        
        public override void Down()
        {
            AddColumn("dbo.PageModels", "AditionalContent", c => c.String());
            AlterColumn("dbo.PageModels", "HeadImageBase64", c => c.String());
            DropColumn("dbo.PageModels", "AdditionalContent");
            DropColumn("dbo.PageModels", "CreationDate");
            DropColumn("dbo.PageModels", "Author");
        }
    }
}
