# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  #  neutrino_api client class.
  class NeutrinoApiClient
    # Singleton access to imaging controller.
    # @return [Imaging] Returns the controller instance.
    def imaging
      Imaging.instance
    end

    # Singleton access to telephony controller.
    # @return [Telephony] Returns the controller instance.
    def telephony
      Telephony.instance
    end

    # Singleton access to data_tools controller.
    # @return [DataTools] Returns the controller instance.
    def data_tools
      DataTools.instance
    end

    # Singleton access to security_and_networking controller.
    # @return [SecurityAndNetworking] Returns the controller instance.
    def security_and_networking
      SecurityAndNetworking.instance
    end

    # Singleton access to geolocation controller.
    # @return [Geolocation] Returns the controller instance.
    def geolocation
      Geolocation.instance
    end

    # Singleton access to e_commerce controller.
    # @return [ECommerce] Returns the controller instance.
    def e_commerce
      ECommerce.instance
    end

    # Singleton access to www controller.
    # @return [WWW] Returns the controller instance.
    def www
      WWW.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(user_id: nil, api_key: nil)
      Configuration.user_id = user_id if
        user_id
      Configuration.api_key = api_key if
        api_key
    end
  end
end
