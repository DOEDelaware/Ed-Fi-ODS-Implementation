using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public interface IDeIdentityProviderFactory
    {
        IDeIdentityProvider GetIdentityProvider(string ProviderType);
    
    }
}
