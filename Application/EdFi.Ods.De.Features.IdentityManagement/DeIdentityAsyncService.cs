// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.De.Features.IdentityManagement;
using EdFi.Ods.Features.IdentityManagement;
using EdFi.Ods.Features.IdentityManagement.Models;
using System;
using System.Threading.Tasks;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    /// <summary>
    /// Implements the Identities service such that it exhibits no capabilities and each method throws <see cref="NotImplementedException" />. 
    /// </summary>
    public class DeIdentityAsyncService : IDeIdentityServiceAsyncWithCustomModels
    {
        public IdentityServiceCapabilities IdentityServiceCapabilities { get; } =
          IdentityServiceCapabilities.None;

        Task<IdentityResponseStatus<string>> IIdentityServiceAsync<DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>.Find(params string[] findRequest)
        {
            throw new NotImplementedException();
        }

        Task<IdentityResponseStatus<DeIdentitySearchResponse>> IIdentityServiceAsync<DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>.Response(string requestToken)
        {
            throw new NotImplementedException();
        }

        Task<IdentityResponseStatus<string>> IIdentityServiceAsync<DeIdentitySearchRequest, DeIdentitySearchResponse, DeIdentityResponse>.Search(params DeIdentitySearchRequest[] searchRequest)
        {
            throw new NotImplementedException();
        }
    }
}
