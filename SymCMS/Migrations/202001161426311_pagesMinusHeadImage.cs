using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class pagesMinusHeadImage : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.PageModels", "HeadImageBase64");
        }

        public override void Down()
        {
            AddColumn("dbo.PageModels", "HeadImageBase64", c => c.String(false));
        }
    }
}