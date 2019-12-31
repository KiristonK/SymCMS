namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class back : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.PostCategories", "Color");
        }
        
        public override void Down()
        {
            AddColumn("dbo.PostCategories", "Color", c => c.String());
        }
    }
}
