using EdFi.Ods.Features.IdentityManagement.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentitySearchResponse : IdentitySearchResponse<DeIdentityResponse>
    {
        public string Token { get; set; }

        public IEnumerable<IdentityError> Errors { get; set; }
    }
}
