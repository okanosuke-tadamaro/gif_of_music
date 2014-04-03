GifOfMusic::Application.routes.draw do
  
  root "games#gifs"
  get "games/index"
  get "games/gifs" => "games#gifs"
  get "games/results" => "games#results"

end
