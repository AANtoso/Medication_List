require 'open-uri'
require 'nokogiri'

class MedicationScraper
  def self.scrape_medication_list

    html = open("https://www.webmd.com/drugs/2/alpha/A/")
    doc = Nokogiri::HTML(html)

    medication_list = doc.css("li")

    medication_list.drop(2).each do |medication|
      drug = Medication.new
      drug.name = medication.css("a").text
      drug.url = medication.css("a").attr('href').value
    end


  end
  #def initialize
  #    url = "https://www.webmd.com/drugs/2/alpha/A/"
  #    aa_url = url + "aa"
  #    ab_url = url + "ab"
  #end

  #def get_page
  #    page = Nokogiri::HTML(open (@aa_url))
  #end

  #def get_drug
  #    get_page.css(".drug-list-container")
#end
