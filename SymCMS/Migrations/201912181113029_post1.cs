namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class post1 : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.PostModels", newName: "PostViewModels");
        }
        
        public override void Down()
        {
            RenameTable(name: "dbo.PostViewModels", newName: "PostModels");
        }
    }
}
