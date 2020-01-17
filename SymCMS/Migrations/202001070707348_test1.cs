using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class test1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                    "dbo.CommentModels",
                    c => new
                    {
                        CommentId = c.Int(false, true),
                        CommentText = c.String(),
                        AuthorName = c.String(),
                        AuthorContact = c.String(),
                        PostId = c.Int(false)
                    })
                .PrimaryKey(t => t.CommentId)
                .ForeignKey("dbo.PostModels", t => t.PostId, true)
                .Index(t => t.PostId);
        }

        public override void Down()
        {
            DropForeignKey("dbo.CommentModels", "PostId", "dbo.PostModels");
            DropIndex("dbo.CommentModels", new[] {"PostId"});
            DropTable("dbo.CommentModels");
        }
    }
}