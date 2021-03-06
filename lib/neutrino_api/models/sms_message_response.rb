# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # SMSMessageResponse Model.
  class SMSMessageResponse < BaseModel
    # True if this a valid phone number
    # @return [Boolean]
    attr_accessor :number_valid

    # True if the SMS has been sent
    # @return [Boolean]
    attr_accessor :sent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number_valid'] = 'numberValid'
      @_hash['sent'] = 'sent'
      @_hash
    end

    def initialize(number_valid = nil,
                   sent = nil)
      @number_valid = number_valid
      @sent = sent
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number_valid = hash['numberValid']
      sent = hash['sent']

      # Create object from extracted values.
      SMSMessageResponse.new(number_valid,
                             sent)
    end
  end
end
