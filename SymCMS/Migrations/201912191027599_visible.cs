namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class visible : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "Visible", c => c.Boolean(nullable: false));
            AddColumn("dbo.PostViewModels", "Visible", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PostViewModels", "Visible");
            DropColumn("dbo.PostModels", "Visible");
        }
    }
}
