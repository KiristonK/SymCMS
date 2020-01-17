using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class _13_init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                    "dbo.PostCategories",
                    c => new
                    {
                        CategoryId = c.Int(false, true),
                        Name = c.String()
                    })
                .PrimaryKey(t => t.CategoryId);

            AddColumn("dbo.PostModels", "CategoryId", c => c.Int(false));
            CreateIndex("dbo.PostModels", "CategoryId");
            AddForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories", "CategoryId", true);
        }

        public override void Down()
        {
            DropForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories");
            DropIndex("dbo.PostModels", new[] {"CategoryId"});
            DropColumn("dbo.PostModels", "CategoryId");
            DropTable("dbo.PostCategories");
        }
    }
}