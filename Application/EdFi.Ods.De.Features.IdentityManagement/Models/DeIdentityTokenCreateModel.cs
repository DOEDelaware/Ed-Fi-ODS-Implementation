using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityTokenCreateModel
    {
        public string tokenLastSurname { get; set; }

        public string tokenFirstName { get; set; }

        public string tokenSexType { get; set; } //M or F

        public DateTime? tokenBirthDate { get; set; }

        public string tokenIntentType { get; set; }

        public Int32 tokenRequestingEducationOrganizationId { get; set; }

        public string DOEConstant = "xxyfalkjwerfslkdjflkjfrlwnmc";  //just to reduce the change of reverse engineering

        public DateTime tokenDateStamp = DateTime.Today; //to check expiration

        public static explicit operator DeIdentitySearchRequest(DeIdentityTokenCreateModel v) =>
            new DeIdentitySearchRequest
            {
                LastSurname = v.tokenLastSurname,
                FirstName = v.tokenFirstName,
                SexType = v.tokenSexType,
                BirthDate = v.tokenBirthDate,
                SearchIntentType = v.tokenIntentType,
                RequestingEducationOrganizationId = v.tokenRequestingEducationOrganizationId
            };

        public static explicit operator DeIdentityCreateRequest(DeIdentityTokenCreateModel v) =>
            new DeIdentityCreateRequest
            {
                LastSurname = v.tokenLastSurname,
                FirstName = v.tokenFirstName,
                SexType = v.tokenSexType,
                BirthDate = v.tokenBirthDate,
                CreateIntentType = v.tokenIntentType,
                RequestingEducationOrganizationId = v.tokenRequestingEducationOrganizationId
            };

    }
}
