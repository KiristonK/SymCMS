using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class visible : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "Visible", c => c.Boolean(false));
        }

        public override void Down()
        {
            DropColumn("dbo.PostModels", "Visible");
        }
    }
}