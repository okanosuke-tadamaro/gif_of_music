class GamesController < ApplicationController

  def index
  	# songs = HTTParty.get(Song.get_songs)
  	# songs["response"]["songs"].each do |song|
  	# 	Song.create(title: song["title"], artist: song["artist_name"]) if song["title"].split.size < 5
  	# end
  	# song_list = Song.all
  	# song_list.each do |song|
  	# 	kw = Gif.get_keywords(song.title)
  	# 	kw.each { |w| Gif.get_gifs(w) }
  	# end
  end

  def gifs
  end

end
