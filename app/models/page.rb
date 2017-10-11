require 'nokogiri'
require 'open-uri'

class Page < ApplicationRecord
  validates :content, presence: true
  validates :url, presence: true

  def parse_content
    header_one = []
    header_two = []
    header_three = []
    links = []
    url = self.url

    doc = Nokogiri::HTML(open("http://njdev.co"))

    if doc.css("h1").count > 0
      doc.css("h1").each do |link|
        header_one << {element: link.to_html, text: link.content}
      end
    end
    if doc.css("h2").count > 0
      doc.css("h2").each do |link|
        header_two << {element: link.to_html, text: link.content}
      end
    end
    if doc.css("h3").count > 0
      doc.css("h3").each do |link|
        header_three << {element: link.to_html, text: link.content}
      end
    end
    if doc.css("a").count > 0
      doc.css("a").each do |link|
        links << {element: link.to_html, text: link.content}
      end
    end

    self.content = {
      headerOne: header_one,
      headerTwo: header_two,
      headerThree: header_three,
      links: links
    }
  end
end
