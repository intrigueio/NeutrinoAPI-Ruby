# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # PhoneVerifyResponse Model.
  class PhoneVerifyResponse < BaseModel
    # True if this a valid phone number
    # @return [Boolean]
    attr_accessor :number_valid

    # True if the call is being made now
    # @return [Boolean]
    attr_accessor :calling

    # The security code generated, you can save this code to perform your own
    # verification or you can use the <a
    # href="https://www.neutrinoapi.com/api/verify-security-code/">Verify
    # Security Code API</a>
    # @return [String]
    attr_accessor :security_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number_valid'] = 'numberValid'
      @_hash['calling'] = 'calling'
      @_hash['security_code'] = 'securityCode'
      @_hash
    end

    def initialize(number_valid = nil,
                   calling = nil,
                   security_code = nil)
      @number_valid = number_valid
      @calling = calling
      @security_code = security_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number_valid = hash['numberValid']
      calling = hash['calling']
      security_code = hash['securityCode']

      # Create object from extracted values.
      PhoneVerifyResponse.new(number_valid,
                              calling,
                              security_code)
    end
  end
end
