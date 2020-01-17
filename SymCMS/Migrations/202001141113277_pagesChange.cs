using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class pagesChange : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PageModels", "AditionalContent", c => c.String());
            AddColumn("dbo.PageModels", "Headimagebase64", c => c.String());
        }

        public override void Down()
        {
            DropColumn("dbo.PageModels", "Headimagebase64");
            DropColumn("dbo.PageModels", "AditionalContent");
        }
    }
}