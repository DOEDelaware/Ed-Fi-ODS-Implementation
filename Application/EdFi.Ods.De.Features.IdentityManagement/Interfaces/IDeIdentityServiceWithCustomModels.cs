using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public interface IDeIdentityServiceWithCustomModels
        : IIdentityService<DeIdentityCreateRequest, DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>
        //,        IIdentityServiceAsync<DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>
    { }

}
