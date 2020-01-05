namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class comments : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CommentModels",
                c => new
                    {
                        CommentId = c.Int(nullable: false, identity: true),
                        CommentText = c.String(),
                        AuthorName = c.String(),
                        AuthorContact = c.String(),
                    })
                .PrimaryKey(t => t.CommentId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.CommentModels");
        }
    }
}
