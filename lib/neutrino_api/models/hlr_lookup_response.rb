# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # HLRLookupResponse Model.
  class HLRLookupResponse < BaseModel
    # True if this a valid phone number
    # @return [Boolean]
    attr_accessor :number_valid

    # The numbers international calling code
    # @return [Integer]
    attr_accessor :international_calling_code

    # The mobile MNC number (Mobile Network Code)
    # @return [String]
    attr_accessor :mnc

    # The number type, possible values are: <ul> <li>mobile</li>
    # <li>fixed-line</li> <li>premium-rate</li> <li>toll-free</li> <li>voip</li>
    # <li>unknown</li> </ul>
    # @return [String]
    attr_accessor :number_type

    # Was the HLR lookup successful. If true then this is a working and
    # registered cell-phone or mobile device (SMS and phone calls will be
    # delivered)
    # @return [Boolean]
    attr_accessor :hlr_valid

    # The HLR lookup status, possible values are: <ul> <li>ok - the HLR lookup
    # was successful and the device is connected</li> <li>absent - the number
    # was once registered but the device has been switched off or out of network
    # range for some time</li> <li>unknown - the number is not known by the
    # mobile network</li> <li>invalid - the number is not a valid mobile MSISDN
    # number</li> <li>fixed-line - the number is a registered fixed-line not
    # mobile</li> <li>voip - the number has been detected as a VOIP line</li>
    # <li>failed - the HLR lookup has failed, we could not determine the real
    # status of this number</li> </ul>
    # @return [String]
    attr_accessor :hlr_status

    # If the number has been ported, the ported to carrier name
    # @return [String]
    attr_accessor :ported_network

    # The mobile IMSI number (International Mobile Subscriber Identity)
    # @return [String]
    attr_accessor :imsi

    # The mobile MCC number (Mobile Country Code)
    # @return [String]
    attr_accessor :mcc

    # The number represented in full international format
    # @return [String]
    attr_accessor :international_number

    # The number represented in local dialing format
    # @return [String]
    attr_accessor :local_number

    # The number location as an ISO 2-letter country code
    # @return [String]
    attr_accessor :country_code

    # Has this number been ported to another network
    # @return [Boolean]
    attr_accessor :is_ported

    # The mobile MSIN number (Mobile Subscription Identification Number)
    # @return [String]
    attr_accessor :msin

    # The number location. Could be a city, region or country depending on the
    # type of number
    # @return [String]
    attr_accessor :location

    # The origin mobile carrier name
    # @return [String]
    attr_accessor :origin_network

    # True if this is a mobile number (only true with 100% certainty, if the
    # number type is unknown this value will be false)
    # @return [Boolean]
    attr_accessor :is_mobile

    # Is this number currently roaming from its origin country
    # @return [Boolean]
    attr_accessor :is_roaming

    # The phone number country
    # @return [String]
    attr_accessor :country

    # The number location as an ISO 3-letter country code
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country
    # @return [String]
    attr_accessor :currency_code

    # If the number is currently roaming, the ISO 2-letter country code of the
    # roaming in country
    # @return [String]
    attr_accessor :roaming_country_code

    # The mobile MSC number (Mobile Switching Center)
    # @return [String]
    attr_accessor :msc

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number_valid'] = 'numberValid'
      @_hash['international_calling_code'] = 'internationalCallingCode'
      @_hash['mnc'] = 'mnc'
      @_hash['number_type'] = 'numberType'
      @_hash['hlr_valid'] = 'hlrValid'
      @_hash['hlr_status'] = 'hlrStatus'
      @_hash['ported_network'] = 'portedNetwork'
      @_hash['imsi'] = 'imsi'
      @_hash['mcc'] = 'mcc'
      @_hash['international_number'] = 'internationalNumber'
      @_hash['local_number'] = 'localNumber'
      @_hash['country_code'] = 'countryCode'
      @_hash['is_ported'] = 'isPorted'
      @_hash['msin'] = 'msin'
      @_hash['location'] = 'location'
      @_hash['origin_network'] = 'originNetwork'
      @_hash['is_mobile'] = 'isMobile'
      @_hash['is_roaming'] = 'isRoaming'
      @_hash['country'] = 'country'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['roaming_country_code'] = 'roamingCountryCode'
      @_hash['msc'] = 'msc'
      @_hash
    end

    def initialize(number_valid = nil,
                   international_calling_code = nil,
                   mnc = nil,
                   number_type = nil,
                   hlr_valid = nil,
                   hlr_status = nil,
                   ported_network = nil,
                   imsi = nil,
                   mcc = nil,
                   international_number = nil,
                   local_number = nil,
                   country_code = nil,
                   is_ported = nil,
                   msin = nil,
                   location = nil,
                   origin_network = nil,
                   is_mobile = nil,
                   is_roaming = nil,
                   country = nil,
                   country_code3 = nil,
                   currency_code = nil,
                   roaming_country_code = nil,
                   msc = nil)
      @number_valid = number_valid
      @international_calling_code = international_calling_code
      @mnc = mnc
      @number_type = number_type
      @hlr_valid = hlr_valid
      @hlr_status = hlr_status
      @ported_network = ported_network
      @imsi = imsi
      @mcc = mcc
      @international_number = international_number
      @local_number = local_number
      @country_code = country_code
      @is_ported = is_ported
      @msin = msin
      @location = location
      @origin_network = origin_network
      @is_mobile = is_mobile
      @is_roaming = is_roaming
      @country = country
      @country_code3 = country_code3
      @currency_code = currency_code
      @roaming_country_code = roaming_country_code
      @msc = msc
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number_valid = hash['numberValid']
      international_calling_code = hash['internationalCallingCode']
      mnc = hash['mnc']
      number_type = hash['numberType']
      hlr_valid = hash['hlrValid']
      hlr_status = hash['hlrStatus']
      ported_network = hash['portedNetwork']
      imsi = hash['imsi']
      mcc = hash['mcc']
      international_number = hash['internationalNumber']
      local_number = hash['localNumber']
      country_code = hash['countryCode']
      is_ported = hash['isPorted']
      msin = hash['msin']
      location = hash['location']
      origin_network = hash['originNetwork']
      is_mobile = hash['isMobile']
      is_roaming = hash['isRoaming']
      country = hash['country']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']
      roaming_country_code = hash['roamingCountryCode']
      msc = hash['msc']

      # Create object from extracted values.
      HLRLookupResponse.new(number_valid,
                            international_calling_code,
                            mnc,
                            number_type,
                            hlr_valid,
                            hlr_status,
                            ported_network,
                            imsi,
                            mcc,
                            international_number,
                            local_number,
                            country_code,
                            is_ported,
                            msin,
                            location,
                            origin_network,
                            is_mobile,
                            is_roaming,
                            country,
                            country_code3,
                            currency_code,
                            roaming_country_code,
                            msc)
    end
  end
end
