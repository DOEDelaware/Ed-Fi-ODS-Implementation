using EdFi.Ods.Features.IdentityManagement.Models;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeTestIdentityProvider : IDeTestIdentityProvider
    {
        private DeIdentitySearchResponse testData;

        public DeTestIdentityProvider()
        {
            testData = new DeIdentitySearchResponse { SearchResponses = new IdentitySearchResponses<DeIdentityResponse>[1] };
            testData.SearchResponses[0] = new IdentitySearchResponses<DeIdentityResponse>();
            testData.SearchResponses[0].Responses = new DeIdentityResponse[2];

            testData.SearchResponses[0].Responses[0] = new DeIdentityResponse { UniqueId = "abc", Score = 0.99M, LastSurname = "Flanders", FirstName = "Ned" };
            testData.SearchResponses[0].Responses[1] = new DeIdentityResponse { UniqueId = "123", Score = 0.93M, LastSurname = "Krabappel", FirstName = "Edna" };

            testData.Token = "MockToken";
        }

        public string Create(DeIdentityCreateRequest request)
        {
            return "123";
        }

        public DeIdentitySearchResponses Search(DeIdentitySearchRequest request)
        {
            return (DeIdentitySearchResponses)testData.SearchResponses[0];
        }
    }
}
