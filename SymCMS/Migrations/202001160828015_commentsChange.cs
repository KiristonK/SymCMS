namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class commentsChange : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.CommentModels", "AuthorContact");
        }
        
        public override void Down()
        {
            AddColumn("dbo.CommentModels", "AuthorContact", c => c.String());
        }
    }
}
