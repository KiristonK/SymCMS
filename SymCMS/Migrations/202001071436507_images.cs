using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class images : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "HeadImageBase64", c => c.String());
        }

        public override void Down()
        {
            DropColumn("dbo.PostModels", "HeadImageBase64");
        }
    }
}