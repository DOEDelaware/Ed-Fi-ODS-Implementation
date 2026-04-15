using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityCreateRequest : IdentityCreateRequest
    {
        public string LastSurname { get; set; }

        public string FirstName { get; set; }

        public string? MiddleName { get; set; }

        public DateTime? BirthDate { get; set; }

        public string CreateIntentType { get; set; }

        public Int32 RequestingEducationOrganizationId { get; set; }  //required

        public string Token { get; set; }

        public static explicit operator DeIdentitySearchRequest(DeIdentityCreateRequest v) =>
        new DeIdentitySearchRequest
        {
            LastSurname = v.LastSurname,
            FirstName = v.FirstName,
            SexType = v.SexType,
            BirthDate = v.BirthDate,
            SearchIntentType = v.CreateIntentType,
            RequestingEducationOrganizationId = v.RequestingEducationOrganizationId
        };
        public static explicit operator DeIdentityTokenCreateModel(DeIdentityCreateRequest v) =>
    new DeIdentityTokenCreateModel
    {
        tokenLastSurname = v.LastSurname,
        tokenFirstName = v.FirstName,
        tokenBirthDate = v.BirthDate,
        tokenIntentType = v.CreateIntentType,
        tokenRequestingEducationOrganizationId = v.RequestingEducationOrganizationId
    };

    }
}
