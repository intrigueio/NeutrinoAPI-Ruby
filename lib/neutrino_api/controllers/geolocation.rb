# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Geolocation
  class Geolocation < BaseController
    @instance = Geolocation.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Convert a geographic coordinate (latitude and longitude) into a real world
    # address. See: https://www.neutrinoapi.com/api/geocode-reverse/
    # @param [String] latitude Required parameter: The location latitude in
    # decimal degrees format
    # @param [String] longitude Required parameter: The location longitude in
    # decimal degrees format
    # @param [String] language_code Optional parameter: The language to display
    # results in, available languages are: <ul> <li>de, en, es, fr, it, pt,
    # ru</li> </ul>
    # @param [String] zoom Optional parameter: The zoom level to respond with:
    # <ul> <li>address - the most precise address available</li> <li>street -
    # the street level</li> <li>city - the city level</li> <li>state - the state
    # level</li> <li>country - the country level</li> </ul>
    # @return GeocodeReverseResponse response from the API call
    def geocode_reverse(latitude,
                        longitude,
                        language_code = 'en',
                        zoom = 'address')
      # Prepare query url.
      _path_url = '/geocode-reverse'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'latitude' => latitude,
        'longitude' => longitude,
        'language-code' => language_code,
        'zoom' => zoom
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GeocodeReverseResponse.from_hash(decoded)
    end

    # Get location information about an IP address and do reverse DNS (PTR)
    # lookups. See: https://www.neutrinoapi.com/api/ip-info/
    # @param [String] ip Required parameter: IPv4 or IPv6 address
    # @param [Boolean] reverse_lookup Optional parameter: Do a reverse DNS (PTR)
    # lookup. This option can add extra delay to the request so only use it if
    # you need it
    # @return IPInfoResponse response from the API call
    def ip_info(ip,
                reverse_lookup = false)
      # Prepare query url.
      _path_url = '/ip-info'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'ip' => ip,
        'reverse-lookup' => reverse_lookup
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      IPInfoResponse.from_hash(decoded)
    end

    # Geocode an address, partial address or just the name of a place. See:
    # https://www.neutrinoapi.com/api/geocode-address/
    # @param [String] address Required parameter: The address, partial address
    # or name of a place to try and locate
    # @param [String] country_code Optional parameter: The ISO 2-letter country
    # code to be biased towards (the default is no country bias)
    # @param [String] language_code Optional parameter: The language to display
    # results in, available languages are: <ul> <li>de, en, es, fr, it, pt,
    # ru</li> </ul>
    # @param [Boolean] fuzzy_search Optional parameter: If no matches are found
    # for the given address, start performing a recursive fuzzy search until a
    # geolocation is found. This option is recommended for processing user input
    # or implementing auto-complete. We use a combination of approximate string
    # matching and data cleansing to find possible location matches
    # @return GeocodeAddressResponse response from the API call
    def geocode_address(address,
                        country_code = nil,
                        language_code = 'en',
                        fuzzy_search = false)
      # Prepare query url.
      _path_url = '/geocode-address'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'address' => address,
        'country-code' => country_code,
        'language-code' => language_code,
        'fuzzy-search' => fuzzy_search
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GeocodeAddressResponse.from_hash(decoded)
    end
  end
end
