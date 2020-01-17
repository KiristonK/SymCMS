using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class datesAndAuthorPosts : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "Author", c => c.String());
            AddColumn("dbo.PostModels", "CreationDate", c => c.DateTime(false));
            AddColumn("dbo.PostModels", "Livetime", c => c.DateTime(false));
        }

        public override void Down()
        {
            DropColumn("dbo.PostModels", "Livetime");
            DropColumn("dbo.PostModels", "CreationDate");
            DropColumn("dbo.PostModels", "Author");
        }
    }
}