namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class commentControlPage : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PageModels", "CommentsEnabled", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PageModels", "CommentsEnabled");
        }
    }
}
