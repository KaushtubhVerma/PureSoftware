using System.ComponentModel.DataAnnotations;

namespace CoreWebAPI.Models
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Designation { get; set; }
    }
}
