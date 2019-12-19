namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class post2 : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.PostViewModels", newName: "PostModels");
        }
        
        public override void Down()
        {
            RenameTable(name: "dbo.PostModels", newName: "PostViewModels");
        }
    }
}
