using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class InvalidRequestDataException : Exception 
    {
        public InvalidRequestDataException() { }

        public InvalidRequestDataException(string message)
            : base(message) { }

        public InvalidRequestDataException(string message, Exception inner)
            : base(message, inner) { }
    }
}
