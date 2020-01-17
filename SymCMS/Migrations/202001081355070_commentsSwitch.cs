using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class commentsSwitch : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "CommentsEnabled", c => c.Boolean(false));
        }

        public override void Down()
        {
            DropColumn("dbo.PostModels", "CommentsEnabled");
        }
    }
}