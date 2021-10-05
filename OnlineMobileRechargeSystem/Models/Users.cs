using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineMobileRechargeSystem.Models
{
    public class Users
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string Username { get; set; }
        [Required]
        [RegularExpression("^[a-z0-9_\\+-]+(\\.[a-z0-9_\\+-]+)*@[a-z0-9-]+(\\.[a-z0-9]+)*\\.([a-z]{2,4})$", ErrorMessage = "Invalid email format.")]
        public string Email { get; set; }
        [Required]
        [RegularExpression(@"\d{10}", ErrorMessage = "Please enter 10 digit Mobile No.")]
        public string PhoneNum { get; set; }
        
        [Required(ErrorMessage ="Please Enter Password")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public virtual IEnumerable<ActivePlan> Activeplan { get; set; }

    }
}