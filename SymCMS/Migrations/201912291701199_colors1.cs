namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class colors1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostCategories", "Color", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.PostCategories", "Color");
        }
    }
}
