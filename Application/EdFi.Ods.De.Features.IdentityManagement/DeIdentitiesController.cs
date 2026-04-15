using EdFi.Ods.Common.Configuration;
using EdFi.Ods.Features.Controllers;
using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentitiesController : IdentitiesControllerBase<DeIdentityCreateRequest, DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>
    {
        public DeIdentitiesController(
    IIdentityService<DeIdentityCreateRequest, DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>
        identitySubsystem
            ,
    IIdentityServiceAsync<DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse> identitySubsystemAsync, ApiSettings apiSettings)
    : base(identitySubsystem, identitySubsystemAsync, apiSettings) { }
    }
}
