require 'nokogiri'
require 'httparty'
require 'pry'

class ShakespeareAnalizer
  URL = 'http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml'

  def get_response
    speeches = parse_xml.xpath("//SPEECH")

    speeches.each_with_object(Hash.new (0)) { |speech, hash|
      speech.xpath('LINE').each { |line|
        hash[speech.xpath('SPEAKER').text] += 1 unless speech.xpath('SPEAKER').text == 'ALL'
      }
    }
  end

  private

  def get_xml
    HTTParty.get(URL)
  end

  def parse_xml
    Nokogiri::XML(get_xml.body)
  end
end
