using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class AuthEngineSearchResult
    {
        public virtual int UniqueId { get; set; }
        public virtual int Score { get; set; }
        public virtual string LastSurname { get; set; }
        public virtual string MiddleName { get; set; }
        public virtual string FirstName { get; set; }
        public virtual DateTime BirthDate { get; set; }
        public virtual int CurrentDistrictCode { get; set; }
        public virtual int CurrentSchoolCode { get; set; }
    }
}
