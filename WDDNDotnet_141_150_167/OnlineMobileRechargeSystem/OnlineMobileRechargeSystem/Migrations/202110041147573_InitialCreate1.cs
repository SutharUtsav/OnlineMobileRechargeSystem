namespace OnlineMobileRechargeSystem.Migrations
{
    using System;
    using System.Data.Entity.Migrations;

    public partial class InitialCreate1 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.RechargeLists", "validity", c => c.Int(nullable: false));
        }

        public override void Down()
        {
            AlterColumn("dbo.RechargeLists", "validity", c => c.String());
        }
    }
}
