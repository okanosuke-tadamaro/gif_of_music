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
  	@song = Song.all.sample
  	title_array = Gif.get_keywords(@song.title)
  	@gif_array = []
  	title_array.each do |w|
  		gif = Gif.where(keyword: w).sample
  		@gif_array << gif
  	end
  	@song_id = @song.id
  end

  def results
  	@answer = params[:answer].downcase
  	@song = Song.find(params[:song_id])
  	@title = @song.title.downcase
  	if @answer == @title
  		@result = true
  	else
  		@result = false
  	end
  end

end
