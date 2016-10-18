using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;

namespace LaundaryWebApp.Client
{
    public class BaseClient : HttpClient
    {
        #region Private Member

        private static Dictionary<string, BaseClient> httpClientList = new Dictionary<string, BaseClient>();

        #endregion

        #region Private Constructors

        /// <summary>
        /// Constructs the class instance.
        /// </summary>
        private BaseClient()
            : base()
        {

        }

        /// <summary>
        /// Constructs the class instance.
        /// </summary>
        /// <param name="handler">The HttpMessageHandler associated with this instance.</param>
        private BaseClient(HttpMessageHandler handler)
            : base(handler)
        {

        }

        /// <summary>
        /// Constructs the class instance.
        /// </summary>
        /// <param name="handler">The HttpMessageHandler associated with this instance.</param>
        /// <param name="disposeHandler">True if the inner handler should be disposed of by Dispose(),false if othrwise.</param>
        private BaseClient(HttpMessageHandler handler, bool disposeHandler)
            : base(handler, disposeHandler)
        {

        }

        #endregion

        #region Public Methods

        /// <summary>
        /// Retrieves an existing BastHttpClient instance based on the service name key provided.
        /// </summary>
        /// <param name="serviceName">The service name key associated with the BaseClient instance.</param>
        /// <returns>The BaseClient instance if a valid service name key is provided, null otherwise.</returns>
        public static BaseClient GetHttpClientInstanceForService(string serviceName)
        {
            if (httpClientList.ContainsKey(serviceName))
                return (httpClientList[serviceName]);
            else
                return null;
        }

        /// <summary>
        /// Registers a new BaseClient instance based on the service name key provided.
        /// </summary>
        /// <param name="serviceName">The service name key to be associated with the BaseClient instance created.</param>
        /// <param name="handler">The HttpMessageHandler associated with the BaseClient instance created.</param>
        /// <param name="disposeHandler">True if the inner handler should be disposed of by Dispose(),false if othrwise.</param>
        /// <returns>True if the BaseClient is successfully registered, false if the service name key is already in use.</returns>
        public static bool RegisterHttpClientForServce(string serviceName, HttpMessageHandler handler = null, bool? disposeHandler = null)
        {
            //Check if service name is already registered
            lock (httpClientList)
            {
                if (httpClientList.ContainsKey(serviceName))
                {
                    //Do not register the for the sam key again
                    return false;
                }

                if (handler == null)
                    httpClientList.Add(serviceName, new BaseClient());
                else
                    httpClientList.Add(serviceName, new BaseClient(handler, disposeHandler ?? false));
            }

            return true;
        }

        #endregion
    }
}