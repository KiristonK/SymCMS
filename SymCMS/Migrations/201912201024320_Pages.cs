namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Pages : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.PageModels",
                c => new
                    {
                        PageId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.PageId);
            
            AddColumn("dbo.PostModels", "PageID", c => c.Int(nullable: false));
            AddColumn("dbo.PostViewModels", "PageID", c => c.Int(nullable: false));
            CreateIndex("dbo.PostModels", "PageID");
            CreateIndex("dbo.PostViewModels", "PageID");
            AddForeignKey("dbo.PostModels", "PageID", "dbo.PageModels", "PageId", cascadeDelete: true);
            AddForeignKey("dbo.PostViewModels", "PageID", "dbo.PageModels", "PageId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.PostViewModels", "PageID", "dbo.PageModels");
            DropForeignKey("dbo.PostModels", "PageID", "dbo.PageModels");
            DropIndex("dbo.PostViewModels", new[] { "PageID" });
            DropIndex("dbo.PostModels", new[] { "PageID" });
            DropColumn("dbo.PostViewModels", "PageID");
            DropColumn("dbo.PostModels", "PageID");
            DropTable("dbo.PageModels");
        }
    }
}
