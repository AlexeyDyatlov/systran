require 'httparty'
require_relative 'translate/translate'

module Systran
  # Client requests
  class Client
    include HTTParty
    include Systran::Translate::Translate

    base_uri 'https://api-platform.systran.net/'
    format :json

    attr_reader :access_key

    def initialize(args = {})
      @access_key = args[:access_key] || ENV['SYSTRAN_ACCESS_KEY']
    end
  end
end
