using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityResponse : IdentityResponse
    {
        public string UniqueId { get; set; }

        public decimal Score { get; set; }

        public string LastSurname { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string SexType { get; set; }

        public DateTime? BirthDate { get; set; }

        public Int32? CurrentDistrictCode { get; set; }

        public Int32? CurrentSchoolCode { get; set; }
    }
}
