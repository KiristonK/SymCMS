namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class commentsSwitch : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PostModels", "CommentsEnabled", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PostModels", "CommentsEnabled");
        }
    }
}
