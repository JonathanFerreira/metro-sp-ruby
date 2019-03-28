require 'mechanize'

module SubwaySpStatus
  class Crawler
    def self.all
      agent = Mechanize.new
      page = agent.get(url)

      lines = []
      statuses = []

      records = page.search('div.status-linhas li')

      records.search('p strong').each do |row|
        lines << row.content
      end

      records.search('li a').each do |row|
        statuses << row.content.strip
      end

      Hash[lines.zip(statuses)].map { |k, v| { name: k, status: v } }
    end

    def self.url
      'http://www.metro.sp.gov.br/Sistemas/direto-do-metro-via4/MetroStatusLinha/mobile/smartPhone/diretoDoMetro.aspx'
    end

    def self.find_by_name(name = "")
      all.find { |x| x[:name] == name }
    end
  end
end
