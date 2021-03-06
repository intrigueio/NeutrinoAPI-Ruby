# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # URLInfoResponse Model.
  class URLInfoResponse < BaseModel
    # The HTTP status message assoicated with the status code
    # @return [Integer]
    attr_accessor :http_status_message

    # The servers IP geo-location: full region name (if detectable)
    # @return [String]
    attr_accessor :server_region

    # A key-value map of the URL query paramaters
    # @return [Array<String, String>]
    attr_accessor :query

    # The name of the server software hosting this URL
    # @return [String]
    attr_accessor :server_name

    # The URL port
    # @return [Integer]
    attr_accessor :url_port

    # The servers IP geo-location: full country name
    # @return [String]
    attr_accessor :server_country

    # Is this URL actually serving real content
    # @return [Boolean]
    attr_accessor :real

    # The servers IP geo-location: full city name (if detectable)
    # @return [String]
    attr_accessor :server_city

    # The URL path
    # @return [String]
    attr_accessor :url_path

    # The fully qualified URL. This may be different to the URL requested if
    # http-redirect is true
    # @return [String]
    attr_accessor :url

    # Is this a valid well-formed URL
    # @return [Boolean]
    attr_accessor :valid

    # The servers hostname (PTR record)
    # @return [String]
    attr_accessor :server_hostname

    # The time taken to load the URL content in seconds
    # @return [Integer]
    attr_accessor :load_time

    # True if this URL responded with an HTTP OK (200) status
    # @return [Boolean]
    attr_accessor :http_ok

    # The size of the URL content in bytes
    # @return [Integer]
    attr_accessor :content_size

    # The HTTP status code this URL responded with. An HTTP status of 0
    # indicates a network level issue
    # @return [Integer]
    attr_accessor :http_status

    # The servers IP geo-location: ISO 2-letter country code
    # @return [String]
    attr_accessor :server_country_code

    # The encoding format the URL uses
    # @return [String]
    attr_accessor :content_encoding

    # The IP address of the server hosting this URL
    # @return [String]
    attr_accessor :server_ip

    # The URL protocol, usually http or https
    # @return [String]
    attr_accessor :url_protocol

    # The content-type this URL serves
    # @return [String]
    attr_accessor :content_type

    # True if this URL responded with an HTTP redirect
    # @return [Boolean]
    attr_accessor :http_redirect

    # The actual content this URL responded with. Only set if the
    # 'fetch-content' option was used
    # @return [String]
    attr_accessor :content

    # True if a timeout occurred while loading the URL. You can set the timeout
    # with the request parameter 'timeout'
    # @return [Boolean]
    attr_accessor :is_timeout

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['http_status_message'] = 'httpStatusMessage'
      @_hash['server_region'] = 'serverRegion'
      @_hash['query'] = 'query'
      @_hash['server_name'] = 'serverName'
      @_hash['url_port'] = 'urlPort'
      @_hash['server_country'] = 'serverCountry'
      @_hash['real'] = 'real'
      @_hash['server_city'] = 'serverCity'
      @_hash['url_path'] = 'urlPath'
      @_hash['url'] = 'url'
      @_hash['valid'] = 'valid'
      @_hash['server_hostname'] = 'serverHostname'
      @_hash['load_time'] = 'loadTime'
      @_hash['http_ok'] = 'httpOk'
      @_hash['content_size'] = 'contentSize'
      @_hash['http_status'] = 'httpStatus'
      @_hash['server_country_code'] = 'serverCountryCode'
      @_hash['content_encoding'] = 'contentEncoding'
      @_hash['server_ip'] = 'serverIp'
      @_hash['url_protocol'] = 'urlProtocol'
      @_hash['content_type'] = 'contentType'
      @_hash['http_redirect'] = 'httpRedirect'
      @_hash['content'] = 'content'
      @_hash['is_timeout'] = 'isTimeout'
      @_hash
    end

    def initialize(http_status_message = nil,
                   server_region = nil,
                   query = nil,
                   server_name = nil,
                   url_port = nil,
                   server_country = nil,
                   real = nil,
                   server_city = nil,
                   url_path = nil,
                   url = nil,
                   valid = nil,
                   server_hostname = nil,
                   load_time = nil,
                   http_ok = nil,
                   content_size = nil,
                   http_status = nil,
                   server_country_code = nil,
                   content_encoding = nil,
                   server_ip = nil,
                   url_protocol = nil,
                   content_type = nil,
                   http_redirect = nil,
                   content = nil,
                   is_timeout = nil)
      @http_status_message = http_status_message
      @server_region = server_region
      @query = query
      @server_name = server_name
      @url_port = url_port
      @server_country = server_country
      @real = real
      @server_city = server_city
      @url_path = url_path
      @url = url
      @valid = valid
      @server_hostname = server_hostname
      @load_time = load_time
      @http_ok = http_ok
      @content_size = content_size
      @http_status = http_status
      @server_country_code = server_country_code
      @content_encoding = content_encoding
      @server_ip = server_ip
      @url_protocol = url_protocol
      @content_type = content_type
      @http_redirect = http_redirect
      @content = content
      @is_timeout = is_timeout
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      http_status_message = hash['httpStatusMessage']
      server_region = hash['serverRegion']
      query = hash['query']
      server_name = hash['serverName']
      url_port = hash['urlPort']
      server_country = hash['serverCountry']
      real = hash['real']
      server_city = hash['serverCity']
      url_path = hash['urlPath']
      url = hash['url']
      valid = hash['valid']
      server_hostname = hash['serverHostname']
      load_time = hash['loadTime']
      http_ok = hash['httpOk']
      content_size = hash['contentSize']
      http_status = hash['httpStatus']
      server_country_code = hash['serverCountryCode']
      content_encoding = hash['contentEncoding']
      server_ip = hash['serverIp']
      url_protocol = hash['urlProtocol']
      content_type = hash['contentType']
      http_redirect = hash['httpRedirect']
      content = hash['content']
      is_timeout = hash['isTimeout']

      # Create object from extracted values.
      URLInfoResponse.new(http_status_message,
                          server_region,
                          query,
                          server_name,
                          url_port,
                          server_country,
                          real,
                          server_city,
                          url_path,
                          url,
                          valid,
                          server_hostname,
                          load_time,
                          http_ok,
                          content_size,
                          http_status,
                          server_country_code,
                          content_encoding,
                          server_ip,
                          url_protocol,
                          content_type,
                          http_redirect,
                          content,
                          is_timeout)
    end
  end
end
