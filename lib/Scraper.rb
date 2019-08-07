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
    def self.scrape_medication_specifications(medication)
      html = open(https://www.webmd.com)
    end

  end
