class MedicationScraper

  def initialize
      @base_url = "https://www.webmd.com/drugs/2/alpha/A/"
      @aa_url = @base_url + "aa"
      @ab_url = @base_url + "ab"
  end

  def scrape
      aa_page = open(@aa_url)
      aa_html = aa_page.read
      ab_page = open(@ab_url)
      ab_html = ab_page.read
  end

end
