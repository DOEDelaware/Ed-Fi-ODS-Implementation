namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class TestIdentityTokenProvider: IDeIdentityTokenProvider
    {
        public TestIdentityTokenProvider() 
        { 
        }

        public string GetToken(DeIdentityTokenCreateModel request)
        {

            return "MockToken";

        }
    }


}
