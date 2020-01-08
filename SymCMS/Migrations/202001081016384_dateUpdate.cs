namespace SymCMS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class dateUpdate : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.PostModels", "CreationDate", c => c.DateTime(nullable: false, precision: 7, storeType: "datetime2"));
            AlterColumn("dbo.PostModels", "Livetime", c => c.DateTime(nullable: false, precision: 7, storeType: "datetime2"));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.PostModels", "Livetime", c => c.DateTime(nullable: false));
            AlterColumn("dbo.PostModels", "CreationDate", c => c.DateTime(nullable: false));
        }
    }
}
