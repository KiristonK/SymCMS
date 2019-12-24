namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _13_init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.PostCategories",
                c => new
                    {
                        CategoryId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.CategoryId);
            
            AddColumn("dbo.PostModels", "CategoryId", c => c.Int(nullable: false));
            AddColumn("dbo.PostViewModels", "CategoryId", c => c.Int(nullable: false));
            CreateIndex("dbo.PostModels", "CategoryId");
            CreateIndex("dbo.PostViewModels", "CategoryId");
            AddForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories", "CategoryId", cascadeDelete: true);
            AddForeignKey("dbo.PostViewModels", "CategoryId", "dbo.PostCategories", "CategoryId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.PostViewModels", "CategoryId", "dbo.PostCategories");
            DropForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories");
            DropIndex("dbo.PostViewModels", new[] { "CategoryId" });
            DropIndex("dbo.PostModels", new[] { "CategoryId" });
            DropColumn("dbo.PostViewModels", "CategoryId");
            DropColumn("dbo.PostModels", "CategoryId");
            DropTable("dbo.PostCategories");
        }
    }
}
