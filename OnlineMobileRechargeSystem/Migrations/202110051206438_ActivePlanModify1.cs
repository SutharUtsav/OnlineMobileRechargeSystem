namespace OnlineMobileRechargeSystem.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ActivePlanModify1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ActivePlans",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        startdate = c.DateTime(nullable: false),
                        enddate = c.DateTime(nullable: false),
                        Recharge_Id = c.Int(),
                        user_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.RechargeLists", t => t.Recharge_Id)
                .ForeignKey("dbo.Users", t => t.user_Id)
                .Index(t => t.Recharge_Id)
                .Index(t => t.user_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ActivePlans", "user_Id", "dbo.Users");
            DropForeignKey("dbo.ActivePlans", "Recharge_Id", "dbo.RechargeLists");
            DropIndex("dbo.ActivePlans", new[] { "user_Id" });
            DropIndex("dbo.ActivePlans", new[] { "Recharge_Id" });
            DropTable("dbo.ActivePlans");
        }
    }
}
