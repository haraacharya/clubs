module ClubsHelper

	def url_helper(url_data)
		if url_data.url.starts_with?("http://")
			link_to url_data.url, url_data.url
		elsif url_data.url.to_s ==''
			"Url not updated".html_safe
		else
			link_to url_data.url, "http://" + url_data.url
		end	
	end

end	