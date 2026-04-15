using NHibernate;
using Microsoft.Extensions.Configuration;

namespace EdFi.Ods.De.Features.IdentityManagement
{

    public class DeStudentIdentityProvider : IDeStudentIdentityProvider
    {
        //private const string constSearchProc= "NS_SearchNameMore_API";
        //private const string constCreateIDProd = "NS_RequestID_API";
        //private const string constConnStringName = "Identity_Student";

        private string SearchProc;
        private string CreateIDProd;
        private string ConnStringName;


        //private readonly IConfigConnectionStringsProvider _configConnectionStringsProvider;
        private readonly IConfiguration _configuration;

        public DeStudentIdentityProvider(IConfiguration configuration)
        {
            _configuration = configuration;
        }


        public string Create(DeIdentityCreateRequest request)
        {
            GetIdentityConnnectionInformation();
            //student provider just runs the proc; error check in service
            string _createdID = "";
            NHibernate.Cfg.Configuration config = getDelsisConfig();

            ISessionFactory factory = config.BuildSessionFactory();

            using (NHibernate.ISession session = factory.OpenSession())
            {
                IQuery query = session.GetNamedQuery(CreateIDProd);

                query.SetParameter("LastSurname", request.LastSurname);
                query.SetParameter("FirstName", request.FirstName);
                query.SetParameter("MiddleName", request.MiddleName);
                query.SetParameter("BirthDate", request.BirthDate);
                query.SetParameter("RequestingEducationOrganizationId", request.RequestingEducationOrganizationId);

                IList<DELSISCreateIDResult> results = query.List<DELSISCreateIDResult>();

                if (results.Count != 1)
                {
                    throw new Exception("Failed to Create ID");
                }

                _createdID = results[0].UniqueId.ToString();              

            }

            return _createdID;

        }

        public DeIdentitySearchResponses Search(DeIdentitySearchRequest request)
        {

            //            CREATE procedure[dbo].[NS_SearchNameMore_API]
            //            (
            //                @LastSurname varchar(30),
            //	            @FirstName varchar(30),
            //	            @MiddleName varchar(20),
            //	            @BirthDate smalldatetime = '1/1/1990'	,
            //              @ID
            //              )

            //    Resultset returned is
            //      UniqueID
            //     ,Score
            //     ,LastSurname
            //     ,FirstName
            //     ,MiddleName
            //     ,BirthDate
            //     ,SexType
            //     ,CurrentDistrictCode
            //     ,CurrentSchoolCode(eSchoolBuilding)

            //call delsis search proc
            GetIdentityConnnectionInformation();
            DeIdentitySearchResponses response = new DeIdentitySearchResponses();
            NHibernate.Cfg.Configuration config = getDelsisConfig();

            ISessionFactory factory = config.BuildSessionFactory();

            using (NHibernate.ISession session = factory.OpenSession())
            {
                IQuery query = session.GetNamedQuery(SearchProc);

                query.SetParameter("LastSurname", request.LastSurname);
                query.SetParameter("FirstName", request.FirstName);
                query.SetParameter("MiddleName", request.MiddleName);
                query.SetParameter("BirthDate", request.BirthDate);
                query.SetParameter("UniqueId", request.UniqueId);


                IList<DELSISSearchResult> results = query.List<DELSISSearchResult>();

                DeIdentityResponse[] ret = new DeIdentityResponse[results.Count];
                int i = 0;
                foreach (DELSISSearchResult d in results)
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

                response.Responses = (DeIdentityResponse[])ret;
                

                return response;

            }



        }
        private NHibernate.Cfg.Configuration getDelsisConfig()
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
            SearchProc= _configuration.GetSection("DESettings:StudentIdentityCFG:SearchProc").Value;
            CreateIDProd=_configuration.GetSection("DESettings:StudentIdentityCFG:CreateIDProc").Value;
            ConnStringName=_configuration.GetSection("DESettings:StudentIdentityCFG:ConnectionString").Value;

        }



}
}
