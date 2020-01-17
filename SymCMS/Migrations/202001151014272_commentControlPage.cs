using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class commentControlPage : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PageModels", "CommentsEnabled", c => c.Boolean(false));
        }

        public override void Down()
        {
            DropColumn("dbo.PageModels", "CommentsEnabled");
        }
    }
}