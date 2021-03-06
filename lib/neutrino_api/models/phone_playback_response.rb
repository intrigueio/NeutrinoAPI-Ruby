# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # PhonePlaybackResponse Model.
  class PhonePlaybackResponse < BaseModel
    # True if the call is being made now
    # @return [Boolean]
    attr_accessor :calling

    # True if this a valid phone number
    # @return [Boolean]
    attr_accessor :number_valid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['calling'] = 'calling'
      @_hash['number_valid'] = 'numberValid'
      @_hash
    end

    def initialize(calling = nil,
                   number_valid = nil)
      @calling = calling
      @number_valid = number_valid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      calling = hash['calling']
      number_valid = hash['numberValid']

      # Create object from extracted values.
      PhonePlaybackResponse.new(calling,
                                number_valid)
    end
  end
end
