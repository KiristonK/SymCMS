namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Categories : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.PostModels", "PageID", "dbo.PageModels");
            DropForeignKey("dbo.PostViewModels", "PageID", "dbo.PageModels");
            DropIndex("dbo.PostModels", new[] { "PageID" });
            DropIndex("dbo.PostViewModels", new[] { "PageID" });
            CreateTable(
                "dbo.PostCategories",
                c => new
                    {
                        CatrgoryId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.CatrgoryId);
            
            AddColumn("dbo.PostModels", "CategoryId", c => c.Int(nullable: false));
            AddColumn("dbo.PostViewModels", "CategoryId", c => c.Int(nullable: false));
            AddColumn("dbo.PostViewModels", "Category_CatrgoryId", c => c.Int());
            CreateIndex("dbo.PostModels", "CategoryId");
            CreateIndex("dbo.PostViewModels", "Category_CatrgoryId");
            AddForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories", "CatrgoryId", cascadeDelete: true);
            AddForeignKey("dbo.PostViewModels", "Category_CatrgoryId", "dbo.PostCategories", "CatrgoryId");
            DropColumn("dbo.PostModels", "PageID");
            DropColumn("dbo.PostViewModels", "PageID");
            DropTable("dbo.PageModels");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.PageModels",
                c => new
                    {
                        PageId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.PageId);
            
            AddColumn("dbo.PostViewModels", "PageID", c => c.Int(nullable: false));
            AddColumn("dbo.PostModels", "PageID", c => c.Int(nullable: false));
            DropForeignKey("dbo.PostViewModels", "Category_CatrgoryId", "dbo.PostCategories");
            DropForeignKey("dbo.PostModels", "CategoryId", "dbo.PostCategories");
            DropIndex("dbo.PostViewModels", new[] { "Category_CatrgoryId" });
            DropIndex("dbo.PostModels", new[] { "CategoryId" });
            DropColumn("dbo.PostViewModels", "Category_CatrgoryId");
            DropColumn("dbo.PostViewModels", "CategoryId");
            DropColumn("dbo.PostModels", "CategoryId");
            DropTable("dbo.PostCategories");
            CreateIndex("dbo.PostViewModels", "PageID");
            CreateIndex("dbo.PostModels", "PageID");
            AddForeignKey("dbo.PostViewModels", "PageID", "dbo.PageModels", "PageId", cascadeDelete: true);
            AddForeignKey("dbo.PostModels", "PageID", "dbo.PageModels", "PageId", cascadeDelete: true);
        }
    }
}
