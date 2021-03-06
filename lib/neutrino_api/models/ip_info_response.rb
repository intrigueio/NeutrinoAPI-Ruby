# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # IPInfoResponse Model.
  class IPInfoResponse < BaseModel
    # Is this a valid IPv4 or IPv6 address
    # @return [Boolean]
    attr_accessor :valid

    # Full country name
    # @return [String]
    attr_accessor :country

    # The IPs full hostname (only set if reverse-lookup has been used)
    # @return [String]
    attr_accessor :hostname

    # Name of the city (if detectable)
    # @return [String]
    attr_accessor :city

    # ISO 2-letter country code
    # @return [String]
    attr_accessor :country_code

    # Location latitude
    # @return [Integer]
    attr_accessor :latitude

    # Name of the region (if detectable)
    # @return [String]
    attr_accessor :region

    # Location longitude
    # @return [Integer]
    attr_accessor :longitude

    # ISO 2-letter continent code
    # @return [String]
    attr_accessor :continent_code

    # The IP address
    # @return [String]
    attr_accessor :ip

    # ISO 3-letter country code
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country
    # @return [String]
    attr_accessor :currency_code

    # The IPs host domain (only set if reverse-lookup has been used)
    # @return [String]
    attr_accessor :host_domain

    # Map containing timezone details for the location: <ul> <li>id - the time
    # zone ID as per the IANA time zone database (tzdata)</li> <li>name - the
    # time zone name</li> <li>abbr - the time zone abbreviation</li> <li>date -
    # the current date within the time zone (ISO format)</li> <li>time - the
    # current time within the time zone (ISO format)</li> </ul>
    # @return [Array<String, String>]
    attr_accessor :timezone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['country'] = 'country'
      @_hash['hostname'] = 'hostname'
      @_hash['city'] = 'city'
      @_hash['country_code'] = 'countryCode'
      @_hash['latitude'] = 'latitude'
      @_hash['region'] = 'region'
      @_hash['longitude'] = 'longitude'
      @_hash['continent_code'] = 'continentCode'
      @_hash['ip'] = 'ip'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['host_domain'] = 'hostDomain'
      @_hash['timezone'] = 'timezone'
      @_hash
    end

    def initialize(valid = nil,
                   country = nil,
                   hostname = nil,
                   city = nil,
                   country_code = nil,
                   latitude = nil,
                   region = nil,
                   longitude = nil,
                   continent_code = nil,
                   ip = nil,
                   country_code3 = nil,
                   currency_code = nil,
                   host_domain = nil,
                   timezone = nil)
      @valid = valid
      @country = country
      @hostname = hostname
      @city = city
      @country_code = country_code
      @latitude = latitude
      @region = region
      @longitude = longitude
      @continent_code = continent_code
      @ip = ip
      @country_code3 = country_code3
      @currency_code = currency_code
      @host_domain = host_domain
      @timezone = timezone
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      country = hash['country']
      hostname = hash['hostname']
      city = hash['city']
      country_code = hash['countryCode']
      latitude = hash['latitude']
      region = hash['region']
      longitude = hash['longitude']
      continent_code = hash['continentCode']
      ip = hash['ip']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']
      host_domain = hash['hostDomain']
      timezone = hash['timezone']

      # Create object from extracted values.
      IPInfoResponse.new(valid,
                         country,
                         hostname,
                         city,
                         country_code,
                         latitude,
                         region,
                         longitude,
                         continent_code,
                         ip,
                         country_code3,
                         currency_code,
                         host_domain,
                         timezone)
    end
  end
end
