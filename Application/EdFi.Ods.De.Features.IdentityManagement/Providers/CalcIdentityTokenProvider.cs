using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
using Newtonsoft.Json;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class CalcIdentityTokenProvider: IDeIdentityTokenProvider
    {
        public CalcIdentityTokenProvider() 
        { 
        }


        public string GetToken(DeIdentityTokenCreateModel request)
        {
            string strRequest= JsonConvert.SerializeObject(request);

            string result = Tokanize(strRequest);

            return result;


        }


        private string Tokanize(string request)
        {
            byte[] bytes = Encoding.ASCII.GetBytes(request);

            HashAlgorithm sha = SHA256.Create();
            byte[] btResult = sha.ComputeHash(bytes);

            string result = (BitConverter.ToString(btResult)).Replace("-", "");

            return result;
        }
    }


}
