namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class commentChange : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels");
            DropIndex("dbo.CommentModels", new[] { "PostId" });
            AddColumn("dbo.CommentModels", "PageId", c => c.Int());
            AlterColumn("dbo.CommentModels", "PostId", c => c.Int());
            CreateIndex("dbo.CommentModels", "PostId");
            CreateIndex("dbo.CommentModels", "PageId");
            AddForeignKey("dbo.CommentModels", "PageId", "dbo.PageModels", "Id");
            AddForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels");
            DropForeignKey("dbo.CommentModels", "PageId", "dbo.PageModels");
            DropIndex("dbo.CommentModels", new[] { "PageId" });
            DropIndex("dbo.CommentModels", new[] { "PostId" });
            AlterColumn("dbo.CommentModels", "PostId", c => c.Int(nullable: false));
            DropColumn("dbo.CommentModels", "PageId");
            CreateIndex("dbo.CommentModels", "PostId");
            AddForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels", "Id", cascadeDelete: true);
        }
    }
}
