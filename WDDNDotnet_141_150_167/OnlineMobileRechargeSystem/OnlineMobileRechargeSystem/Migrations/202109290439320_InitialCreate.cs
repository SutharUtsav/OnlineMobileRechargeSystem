namespace OnlineMobileRechargeSystem.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Username = c.String(nullable: false),
                        Email = c.String(nullable: false),
                        PhoneNum = c.String(nullable: false),
                        Password = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Providers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        ProviderName = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.RechargeLists",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Amount = c.Int(nullable: false),
                        validity = c.String(),
                        Datapack = c.String(),
                        SMSLimit = c.String(),
                        Voice = c.String(),
                        Provider_Id = c.Int(),
                        Type_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Providers", t => t.Provider_Id)
                .ForeignKey("dbo.TypeofRecharges", t => t.Type_Id)
                .Index(t => t.Provider_Id)
                .Index(t => t.Type_Id);
            
            CreateTable(
                "dbo.TypeofRecharges",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        RechargeType = c.String(),
                        provider_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Providers", t => t.provider_Id)
                .Index(t => t.provider_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RechargeLists", "Type_Id", "dbo.TypeofRecharges");
            DropForeignKey("dbo.TypeofRecharges", "provider_Id", "dbo.Providers");
            DropForeignKey("dbo.RechargeLists", "Provider_Id", "dbo.Providers");
            DropIndex("dbo.TypeofRecharges", new[] { "provider_Id" });
            DropIndex("dbo.RechargeLists", new[] { "Type_Id" });
            DropIndex("dbo.RechargeLists", new[] { "Provider_Id" });
            DropTable("dbo.TypeofRecharges");
            DropTable("dbo.RechargeLists");
            DropTable("dbo.Providers");
            DropTable("dbo.Users");
        }
    }
}
