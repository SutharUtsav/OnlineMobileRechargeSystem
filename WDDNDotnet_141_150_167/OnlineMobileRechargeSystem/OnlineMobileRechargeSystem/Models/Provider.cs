using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace OnlineMobileRechargeSystem.Models
{
    public class Provider
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string ProviderName { get; set; }

        public virtual IEnumerable<TypeofRecharge> Types { get; set; }
        public virtual IEnumerable<RechargeList> Recharges { get; set; }


    }
}