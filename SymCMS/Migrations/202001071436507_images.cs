namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class images : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "HeadImageBase64", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.PostModels", "HeadImageBase64");
        }
    }
}
