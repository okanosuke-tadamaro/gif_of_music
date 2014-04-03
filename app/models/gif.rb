class Gif < ActiveRecord::Base

	def self.get_gifs(word)
		response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{word}&limit=5&api_key=#{ENV['GIF_KEY']}")
		Gif.create(image_url: response["data"].first["images"]["fixed_width"]["url"], keyword: word)
		return true
	end

	def self.get_keywords(title)
		title_array = title.split
		title_array.each do |word|
  		word.downcase
  		if word.length < 2 || word == "the"
  			title_array.delete(word)
  		end
  	end
  	return title_array
	end

end
