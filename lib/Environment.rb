require 'pry'
require 'nokigiri'
require 'open-url'
require 'colorize'

require_relative "./version"
require_relative "./Medicine"
require_relative "./CLI"
require_relative "./Scraper"

module MedicationList
  class Error < StandardError; end
  # Your code goes here...
end
