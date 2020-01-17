using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class post2 : DbMigration
    {
        public override void Up()
        {
            RenameTable("dbo.PostViewModels", "PostModels");
        }

        public override void Down()
        {
            RenameTable("dbo.PostModels", "PostViewModels");
        }
    }
}