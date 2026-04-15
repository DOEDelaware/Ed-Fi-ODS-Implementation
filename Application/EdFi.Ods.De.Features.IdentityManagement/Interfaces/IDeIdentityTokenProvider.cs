namespace EdFi.Ods.De.Features.IdentityManagement;
   public interface IDeIdentityTokenProvider
{
    string GetToken(DeIdentityTokenCreateModel request);
}
