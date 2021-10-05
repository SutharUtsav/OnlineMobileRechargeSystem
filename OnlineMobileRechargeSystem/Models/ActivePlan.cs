using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace OnlineMobileRechargeSystem.Models
{
    public class ActivePlan
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        public DateTime startdate { get; set; }

        public DateTime enddate { get; set; }
        public virtual RechargeList Recharge { get; set; }

        public virtual Users user { get; set; }
    }
}