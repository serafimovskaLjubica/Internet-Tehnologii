using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FriendMVC.Models
{
    public class FriendModel
    {
        [Required(ErrorMessage = "Внесете ID!")]
        [Range(0, 200, ErrorMessage = " ID-то мора да биде број помеѓу 0 и 200!! ")]
        public int Id { get; set; }

        [Required(ErrorMessage = "Внесете име!")]
        public string Ime { get; set; }

        [Required(ErrorMessage = "Внесете место на живеење!")]
        [Display(Name = "Mesto na ziveenje")]
        public string MestoZiveenje { get; set; }
    }
}