using EdFi.Ods.Features.IdentityManagement.Models;
using Microsoft.AspNetCore.Identity;
using Remotion.Linq.Parsing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityService : IDeIdentityServiceWithCustomModels
    {
        public IdentityServiceCapabilities IdentityServiceCapabilities { get; } =
      IdentityServiceCapabilities.Create | IdentityServiceCapabilities.Search;



        private readonly IDeIdentityTokenProvider _identityTokenProvider;
        private readonly IDeIdentityProviderFactory _identityProviderFactory;

        public DeIdentityService(
             IDeIdentityProviderFactory identityProviderFactory,
             IDeIdentityTokenProvider identityTokenProvider
            )
        {
            _identityProviderFactory = identityProviderFactory;
            _identityTokenProvider = identityTokenProvider;
        }

        #region Tasks


        public Task<IdentityResponseStatus<string>> Create(DeIdentityCreateRequest createRequest)
            => Task.FromResult(
                    GetCreate(createRequest)
                );



        Task<IdentityResponseStatus<DeIdentitySearchResponse>>
            IIdentityService<DeIdentityCreateRequest, DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>.
            Find(params string[] findRequest)
            => Task.FromResult( //not implemented in Delaware
                new IdentityResponseStatus<DeIdentitySearchResponse>()
                        {
                            Data = new DeIdentitySearchResponse()
                            {
                     
                                Status = SearchResponseStatus.Incomplete
                                 }
                        });

        public Task<IdentityResponseStatus<DeIdentitySearchResponse>> Response(string requestToken)
            => Task.FromResult(

                //not implemented- not sure how to route here// Ticket in
                new IdentityResponseStatus<DeIdentitySearchResponse>()
                {
                    Data = new DeIdentitySearchResponse()
                    {
                        Status = SearchResponseStatus.Complete,
                        SearchResponses = new[]
                        {
                        new IdentitySearchResponses<DeIdentityResponse>()
                        {
                            Responses = new[]
                            {
                                new DeIdentityResponse()
                                {
                                    FirstName = "John",
                                    LastSurname = "Doe"
                                }
                            }
                        }
                        }
                    }
                });

        Task<IdentityResponseStatus<DeIdentitySearchResponse>>
            IIdentityService<DeIdentityCreateRequest, DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>.
            Search(params DeIdentitySearchRequest[] searchRequest)
            => Task.FromResult(
                                GetIdentityData(searchRequest)
                );

        #endregion

        private bool CheckTokenMatchesCritera(DeIdentityCreateRequest request)
        {
            string _token = _identityTokenProvider.GetToken((DeIdentityTokenCreateModel)request);
            return _token == request.Token;

        }

        private IdentityResponseStatus<DeIdentitySearchResponse> GetIdentityData(DeIdentitySearchRequest[] searchRequests)
        {

            IdentityResponseStatus<DeIdentitySearchResponse> ret = new IdentityResponseStatus<DeIdentitySearchResponse>();

            List<IdentityError> identityErrors = new List<IdentityError>();

            //check that only one set of search criteria sent in
            if (searchRequests.Count() != 1)
                identityErrors.Add(new IdentityError { Code = "MultipleSearches", Description = "Multiple Search Criterias recieved.  Delaware only supports 1 search per call" }); ;

            //single search criteria
            DeIdentitySearchRequest request = searchRequests[0];

            //Check the Requesting EdOrg was provided
            if (!CheckIncludesRequestingAgency(request))
                identityErrors.Add(new IdentityError { Code = "MissingRequestingAgency", Description = "Please include a valid Requesting Agency ID" });

            if (!CheckValidIntentType(request.SearchIntentType))
                identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Invalid Search Request Type.  Valid values are 'Student' or 'Staff'." });

            //Check First and Last name included
            if (!CheckIncludedName(request) && request.UniqueId == null)
                identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Please include last name or ID" });



            //check first/last requred?   Email in to Jeff and Justin

            if (identityErrors.Count() > 0)
            {
                ret.StatusCode = IdentityStatusCode.InvalidProperties;

                ret.Data = new DeIdentitySearchResponse();

                ret.Errors = identityErrors;
            }
            else
            {

                ret.StatusCode = IdentityStatusCode.Success;

                ret.Errors = identityErrors;

                ret.Data = new DeIdentitySearchResponse { SearchResponses = new DeIdentitySearchResponses[1] };

                ret.Data.SearchResponses[0] = GetSearchResults(request);

                ret.Data.Token = _identityTokenProvider.GetToken((DeIdentityTokenCreateModel)request);

                ret.Data.Status = SearchResponseStatus.Complete;

                ret.StatusCode = IdentityStatusCode.Success;

            }

            return ret;

        }


        private bool CheckValidIntentType(string IntentType)
        {
            return (IntentType == "Staff" || IntentType == "Student" || IntentType == "Test");
        }

        private IdentityResponseStatus<string> GetCreate(DeIdentityCreateRequest createRequest)
        {
            //Requests a new ID

            IdentityResponseStatus<string> _ret = new IdentityResponseStatus<string>();

            List<IdentityError> identityErrors = new List<IdentityError>();

            //Check token matches the rest of the request
            if (!CheckTokenMatchesCritera(createRequest))
                identityErrors.Add(new IdentityError { Code = "InvalidToken", Description = "Invalid or expired token.  A recent search with these exact parameters must be performed before creating a new ID" }); ;

            if (!CheckValidIntentType(createRequest.CreateIntentType))
                identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Invalid Create Request Type.  Valid values are 'Student' or 'Staff'" });

            //Check the Requesting EdOrg was provided
            if (!CheckIncludesRequestingAgency(createRequest))
                identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Please include a valid Requesting Agency ID" });

            //Check First and Last name included
            if (!CheckIncludedName(createRequest))
                identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Please include first and last name " });


            if (identityErrors.Count() == 0)
            {

                try
                {
                    IDeIdentityProvider identityProvider = _identityProviderFactory.GetIdentityProvider(createRequest.CreateIntentType);

                    _ret.Data = identityProvider.Create(createRequest);

                    _ret.StatusCode = IdentityStatusCode.Success;

                }
                catch (NotImplementedException e)
                {
                    identityErrors.Add(new IdentityError { Code = "NotImplemented", Description = "ID Creation is not supported for by Delaware for this person type" });

                }
                catch (InvalidRequestDataException e)
                {
                    identityErrors.Add(new IdentityError { Code = "InvalidParameters", Description = "Invalid Creation Data posted." });

                }
                catch (Exception e)
                {
                    identityErrors.Add(new IdentityError { Code = "UnknownError", Description = "Creation Failed" });
                }

            }

            //Invalid Properties and error collection
            if (identityErrors.Count() > 0)
            {
                _ret.Errors = identityErrors;
                _ret.StatusCode = IdentityStatusCode.InvalidProperties;
            }

            return _ret;
        }

        private DeIdentitySearchResponses GetSearchResults(DeIdentitySearchRequest searchRequest)
        {
            DeIdentitySearchResponse ret = new DeIdentitySearchResponse();

            //Domain-specific provider (Staff or Student)
            IDeIdentityProvider identityProvider = null;


            identityProvider = _identityProviderFactory.GetIdentityProvider(searchRequest.SearchIntentType);

            //Perform Search
            DeIdentitySearchResponses searchResults = identityProvider.Search(searchRequest);

            return searchResults;

        }

        private bool CheckIncludesRequestingAgency(DeIdentityCreateRequest request)
        {
            return request.RequestingEducationOrganizationId != 0;
        }

        private bool CheckIncludesRequestingAgency(DeIdentitySearchRequest request)
        {
            return request.RequestingEducationOrganizationId != 0;
        }

        private bool CheckIncludedName(DeIdentitySearchRequest request)
        {
            //if (request.UniqueId != null)
            return checkEmpty(request.LastSurname);
            //else
            //    return true;
        }

        private bool checkEmpty(string x)
        {
            return (x != null && x != "");

        }

        private bool CheckIncludedName(DeIdentityCreateRequest request)
        {
            return checkEmpty(request.LastSurname);
        }

    }
}
