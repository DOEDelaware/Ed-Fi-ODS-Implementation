using EdFi.Ods.Features.IdentityManagement.Models;
using Microsoft.Extensions.Configuration;
using NHibernate;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeStaffIdentityProvider : IDeStaffIdentityProvider
    {
        //private const string constConnStringName = "Identity_Staff";
        //private const string constSearchProc = "IC_StaffSearch_Sel";

        private string SearchProc;
        private string ConnStringName;

        private readonly IConfiguration _configuration;

        public DeStaffIdentityProvider(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public string Create(DeIdentityCreateRequest request)
        {
            throw new NotImplementedException();
        }

        public DeIdentitySearchResponses Search(DeIdentitySearchRequest request)
        {
            //ALTER PROCEDURE[dbo].[IC_StaffSearch_Sel]

            //     @LastSurname varchar(30), 
            //     @FirstName varchar(30) = '', 
            //     @MiddleName varchar(30) = '', 
            //     @BirthDate date = '2999-12-31'

            //    LastSurname is the only required parameter.  This is available now in the UAT AuthorizationEngine database.


            //    Resultset returned is
            //      UniqueID
            //     ,Score
            //     ,LastSurname
            //     ,FirstName
            //     ,MiddleName
            //     ,BirthDate
            //     ,SexType(hardcoded to an empty string)
            //     ,CurrentDistrictCode
            //     ,CurrentSchoolCode(eSchoolBuilding)

            GetIdentityConnnectionInformation();
            DeIdentitySearchResponses response = new DeIdentitySearchResponses();
            NHibernate.Cfg.Configuration config = getAuthEngineConfig();

            ISessionFactory factory = config.BuildSessionFactory();

            using (NHibernate.ISession session = factory.OpenSession())
            {
                IQuery query = session.GetNamedQuery(SearchProc);

                query.SetParameter("LastSurname", request.LastSurname);
                query.SetParameter("FirstName", request.FirstName);
                query.SetParameter("MiddleName", request.MiddleName);
                query.SetParameter("BirthDate", request.BirthDate);
                query.SetParameter("UniqueId", request.UniqueId);


                IList<AuthEngineSearchResult> results = query.List<AuthEngineSearchResult>();

                DeIdentityResponse[] ret = new DeIdentityResponse[results.Count];
                int i = 0;
                foreach (AuthEngineSearchResult d in results)
                {
                    ret[i] = new DeIdentityResponse
                    {
                        UniqueId = d.UniqueId.ToString(),
                        Score = d.Score,
                        LastSurname = d.LastSurname,
                        FirstName = d.FirstName,
                        MiddleName = d.MiddleName,
                        BirthDate = d.BirthDate,
                        CurrentDistrictCode = d.CurrentDistrictCode,
                        CurrentSchoolCode = d.CurrentSchoolCode
                    };
                    i++;
                }

                response.Responses = ret.ToArray<DeIdentityResponse>();


                return response;

            }


        }
        private NHibernate.Cfg.Configuration getAuthEngineConfig()
        {
            NHibernate.Cfg.Configuration config = new NHibernate.Cfg.Configuration();

            config.SetProperty(NHibernate.Cfg.Environment.ConnectionProvider, _configuration.GetSection("DESettings:NhibernateCFG:ConnectionProvider").Value);
            config.SetProperty(NHibernate.Cfg.Environment.Dialect, _configuration.GetSection("DESettings:NhibernateCFG:Dialect").Value);
            config.SetProperty(NHibernate.Cfg.Environment.ConnectionDriver, _configuration.GetSection("DESettings:NhibernateCFG:ConnectionDriver").Value);
            config.SetProperty(NHibernate.Cfg.Environment.ConnectionString, _configuration.GetSection("ConnectionStrings:" + ConnStringName).Value);

            config.AddAssembly("EdFi.Ods.De.Features.IdentityManagement");

            return config;
        }

        private void GetIdentityConnnectionInformation()
        {
            NHibernate.Cfg.Configuration config = new NHibernate.Cfg.Configuration();
            SearchProc = _configuration.GetSection("DESettings:StaffIdentityCFG:SearchProc").Value;
            ConnStringName = _configuration.GetSection("DESettings:StaffIdentityCFG:ConnectionString").Value;

        }
    }
}

