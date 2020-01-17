using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class post : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                    "dbo.PostModels",
                    c => new
                    {
                        Id = c.Int(false, true),
                        Title = c.String(),
                        Content = c.String()
                    })
                .PrimaryKey(t => t.Id);
        }

        public override void Down()
        {
            DropTable("dbo.PostModels");
        }
    }
}