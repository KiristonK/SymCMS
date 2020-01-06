namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class postComCon : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CommentModels", "PostId", c => c.Int(nullable: false));
            CreateIndex("dbo.CommentModels", "PostId");
            AddForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels", "Id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels");
            DropIndex("dbo.CommentModels", new[] { "PostId" });
            DropColumn("dbo.CommentModels", "PostId");
        }
    }
}
