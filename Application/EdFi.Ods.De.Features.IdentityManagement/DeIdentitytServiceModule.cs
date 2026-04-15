using Autofac;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Configuration;
using EdFi.Ods.Common.Constants;
using EdFi.Ods.Common.Container;
using EdFi.Ods.Features.Controllers;
using EdFi.Ods.Features.IdentityManagement;
using EdFi.Ods.Features.IdentityManagement.Models;
using Microsoft.FeatureManagement;

namespace EdFi.Ods.De.Features.IdentityManagement
{
    public class DeIdentityServiceModule : ConditionalModule, ICustomModule
    {
        public DeIdentityServiceModule(ApiSettings apiSettings, IFeatureManager featureManager)    : base(featureManager) { }

        //public override bool IsSelected()
        //{
        //    return IsFeatureEnabled(ApiFeature.IdentityManagement);
        //}
        protected override bool IsSelected()
        {
            return IsFeatureEnabled(ApiFeature.IdentityManagement);
        }

        protected override void ApplyConfigurationSpecificRegistrations(ContainerBuilder builder)
        {
            builder.RegisterType<DeIdentityService>()
                .AsImplementedInterfaces()
                .SingleInstance();

            builder.RegisterType<DeIdentityAsyncService>()
            .AsImplementedInterfaces()
            .SingleInstance();

            //These three interfaces both inherit from IDEIdentityProvider, but we need to use them optionally
            builder.RegisterType<DeStudentIdentityProvider>()
                .AsImplementedInterfaces()
                .SingleInstance();

            builder.RegisterType<DeStaffIdentityProvider>()
                .As<IDeStaffIdentityProvider>()
                .SingleInstance();

            builder.RegisterType<DeTestIdentityProvider>()
                .As<IDeTestIdentityProvider>()
                .SingleInstance();

            builder.RegisterType<DeIdentityProviderFactory>()
                .As<IDeIdentityProviderFactory>()
                .SingleInstance();

            //Token provider
            builder.RegisterType<CalcIdentityTokenProvider>()
                .As<IDeIdentityTokenProvider>()
                .SingleInstance();



    
        }

    }
}
