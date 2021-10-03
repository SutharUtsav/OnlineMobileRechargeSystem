using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineMobileRechargeSystem.Models
{
    public class TypeofRecharge
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string RechargeType { get; set; }
        //foreign key 
       
        public virtual Provider provider { get; set; }
        public virtual IEnumerable<RechargeList> Recharges { get; set; }
    }
}