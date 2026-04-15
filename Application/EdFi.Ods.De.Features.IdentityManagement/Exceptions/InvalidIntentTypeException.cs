namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class InvalidIntentTypeException : Exception 
    {
        public InvalidIntentTypeException() { }

        public InvalidIntentTypeException(string message)
            : base(message) { }

        public InvalidIntentTypeException(string message, Exception inner)
            : base(message, inner) { }
    }
}
