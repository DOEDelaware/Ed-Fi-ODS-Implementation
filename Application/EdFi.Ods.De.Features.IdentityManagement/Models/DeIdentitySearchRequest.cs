using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentitySearchRequest : IdentitySearchRequest
    {
        public string LastSurname { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public DateTime? BirthDate { get; set; }

        public int? UniqueId { get; set; }

        public Int32 RequestingEducationOrganizationId { get; set; }

        public string SearchIntentType { get; set; }

        public static explicit operator DeIdentityCreateRequest(DeIdentitySearchRequest v) =>
            new DeIdentityCreateRequest
            {
                LastSurname = v.LastSurname,
                FirstName = v.FirstName,
                SexType = v.SexType,
                BirthDate = v.BirthDate,
                CreateIntentType = v.SearchIntentType,
                RequestingEducationOrganizationId = v.RequestingEducationOrganizationId
            };

        public static explicit operator DeIdentityTokenCreateModel(DeIdentitySearchRequest v) =>
            new DeIdentityTokenCreateModel
            {  
                tokenLastSurname = v.LastSurname,
                tokenFirstName = v.FirstName,
                tokenBirthDate = v.BirthDate,
                tokenIntentType = v.SearchIntentType,
                tokenRequestingEducationOrganizationId = v.RequestingEducationOrganizationId
            };
   


    }
}
