using EdFi.Ods.Features.IdentityManagement.Models;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public interface IDeIdentityProvider
    {
        string Create(DeIdentityCreateRequest request);

        DeIdentitySearchResponses Search(DeIdentitySearchRequest request);
      
    }
}
