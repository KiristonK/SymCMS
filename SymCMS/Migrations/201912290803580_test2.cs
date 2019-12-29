namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test2 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.PostViewModels", "CategoryId", "dbo.PostCategories");
            DropIndex("dbo.PostViewModels", new[] { "CategoryId" });
            DropTable("dbo.PostViewModels");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.PostViewModels",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Content = c.String(),
                        Visible = c.Boolean(nullable: false),
                        CategoryId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateIndex("dbo.PostViewModels", "CategoryId");
            AddForeignKey("dbo.PostViewModels", "CategoryId", "dbo.PostCategories", "CategoryId", cascadeDelete: true);
        }
    }
}
