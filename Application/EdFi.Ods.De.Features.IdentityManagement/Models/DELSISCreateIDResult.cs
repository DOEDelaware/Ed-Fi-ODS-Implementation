using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DELSISCreateIDResult
    {
        public virtual int UniqueId { get; set; }
        public virtual string LastSurname { get; set; }
        public virtual string FirstName { get; set; }
    }
}
