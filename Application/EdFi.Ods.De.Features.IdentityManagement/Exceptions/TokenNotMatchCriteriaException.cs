namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class TokenNotMatchCriteriaException : Exception 
    {
        public TokenNotMatchCriteriaException() { }

        public TokenNotMatchCriteriaException(string message)
            : base(message) { }

        public TokenNotMatchCriteriaException(string message, Exception inner)
            : base(message, inner) { }
    }
}
