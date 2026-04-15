using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityProviderFactory : IDeIdentityProviderFactory
    {

        const string StudentSearchType = "Student";
        const string StaffSearchType = "Staff";
        const string TestSearchType = "Test";

        private readonly IDeStudentIdentityProvider _studentIdentityProvider;
        private readonly IDeStaffIdentityProvider _staffIdentityProvider;
        private readonly IDeTestIdentityProvider _testIdentityProvider;

        public DeIdentityProviderFactory(
            IDeStudentIdentityProvider studentIdentityProvider,
             IDeStaffIdentityProvider staffIdentityProvider,
             IDeTestIdentityProvider testIdentityProvider
            )
        {
            _studentIdentityProvider = studentIdentityProvider;
            _staffIdentityProvider = staffIdentityProvider;
            _testIdentityProvider = testIdentityProvider;
        }

        public IDeIdentityProvider GetIdentityProvider(string ProviderType)
        {
            IDeIdentityProvider IdentityProvider;
            switch (ProviderType)
            {
                case StudentSearchType:
                    IdentityProvider = _studentIdentityProvider;
                    break;
                case StaffSearchType:
                    IdentityProvider = _staffIdentityProvider;
                    break;
#if DEBUG
                case TestSearchType:
                    IdentityProvider = _testIdentityProvider;
                    break;
#endif
                default:
                    throw new InvalidRequestDataException();
            }

            return IdentityProvider;

        }
    }
}
