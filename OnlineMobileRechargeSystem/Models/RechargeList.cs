using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineMobileRechargeSystem.Models
{
    public class RechargeList
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int Amount { get; set; }
        public string validity { get; set; }
        public string Datapack { get; set; }
        public string SMSLimit { get; set; }
        public string Voice { get; set; }

        //Foreign key
        //[ForeignKey("Provider.Id")]
        public virtual Provider Provider { get; set; }
        //[ForeignKey("TypeofRecharge.Id")]
        public virtual TypeofRecharge Type { get; set; }

        public virtual IEnumerable<ActivePlan> Activeplan { get; set; }
    }
}