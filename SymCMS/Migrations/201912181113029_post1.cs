using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class post1 : DbMigration
    {
        public override void Up()
        {
            RenameTable("dbo.PostModels", "PostViewModels");
        }

        public override void Down()
        {
            RenameTable("dbo.PostViewModels", "PostModels");
        }
    }
}