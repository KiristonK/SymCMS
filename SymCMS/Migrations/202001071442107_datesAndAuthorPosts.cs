namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class datesAndAuthorPosts : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "Author", c => c.String());
            AddColumn("dbo.PostModels", "CreationDate", c => c.DateTime(nullable: false));
            AddColumn("dbo.PostModels", "Livetime", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PostModels", "Livetime");
            DropColumn("dbo.PostModels", "CreationDate");
            DropColumn("dbo.PostModels", "Author");
        }
    }
}
