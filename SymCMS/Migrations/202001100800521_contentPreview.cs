using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class contentPreview : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "ContentPreview", c => c.String());
        }

        public override void Down()
        {
            DropColumn("dbo.PostModels", "ContentPreview");
        }
    }
}