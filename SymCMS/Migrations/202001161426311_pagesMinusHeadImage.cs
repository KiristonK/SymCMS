namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class pagesMinusHeadImage : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.PageModels", "HeadImageBase64");
        }
        
        public override void Down()
        {
            AddColumn("dbo.PageModels", "HeadImageBase64", c => c.String(nullable: false));
        }
    }
}
