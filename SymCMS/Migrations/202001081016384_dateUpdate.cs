using System.Data.Entity.Migrations;

namespace SymCMS.Migrations
{
    public partial class dateUpdate : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.PostModels", "CreationDate", c => c.DateTime(false, 7, storeType: "datetime2"));
            AlterColumn("dbo.PostModels", "Livetime", c => c.DateTime(false, 7, storeType: "datetime2"));
        }

        public override void Down()
        {
            AlterColumn("dbo.PostModels", "Livetime", c => c.DateTime(false));
            AlterColumn("dbo.PostModels", "CreationDate", c => c.DateTime(false));
        }
    }
}