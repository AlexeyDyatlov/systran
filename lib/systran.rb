require 'httparty'
require 'dotenv/load'
require_relative 'systran/version'
require_relative 'systran/client'
require_relative 'systran/translate/translate'

module Systran
  class Error < StandardError; end
end
