class UrlBase < ApplicationRecord
	require 'uri'

	def validate_url url
		if url =~ /\A#{URI::regexp}\z/
		    return true
		end
	end
end
