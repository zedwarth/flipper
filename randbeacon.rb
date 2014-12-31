require 'net/http'
require 'nokogiri'

class RandBeacon

	def self.now(time = time_string)
		get(time)
	end

	def self.previous(time = time_string)
		get("previous/#{time}")
	end

	def self.next(time = time_string)
		get("next/#{time}")
	end

	def self.last
		get("last")
	end

	private

	def self.get(url)
		url = "https://beacon.nist.gov/rest/record/#{url}"
		response = nil
		loop do
			response = Net::HTTP.get_response(URI(url))
			break if response.code != "404"
		end
		tree = Nokogiri::Slop(response.body)
	  tree.document.record.outputValue.text
	end

	def self.time_string
		Time.now.strftime("%s")
	end

end
