class Song < ActiveRecord::Base

	def self.get_songs
		request = "http://developer.echonest.com/api/v4/playlist/basic?api_key=#{ENV['API_KEY']}&genre=pop&results=10&type=genre-radio"
		return request
	end

end
