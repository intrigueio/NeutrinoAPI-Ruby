# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

# CohesityManagementSdk
module NeutrinoApi
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://neutrinoapi.com'

    # Your user ID
    @user_id = 'TODO: Replace'

    # Your API key
    @api_key = 'TODO: Replace'

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :base_uri
      attr_accessor :user_id
      attr_accessor :api_key
    end
  end
end
