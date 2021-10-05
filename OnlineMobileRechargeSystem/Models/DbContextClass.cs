using System;
using System.Data.Entity;
using System.Linq;

namespace OnlineMobileRechargeSystem.Models
{
    public class DbContextClass : DbContext
    {
        public DbContextClass()
            : base("name = OnlineMobileRechargeSystem")
        {
        }
        public DbSet<Users> AllUsers { get; set; }
        public DbSet<Provider> Providers { get; set; }
        public DbSet<TypeofRecharge> Types { get; set; }
        public DbSet<RechargeList> RechargeList { get; set; }

        public DbSet<ActivePlan> Plans { get; set; }

    }

    
}