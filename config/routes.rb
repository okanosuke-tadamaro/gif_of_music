GifOfMusic::Application.routes.draw do
  
  root "games#index"
  get "games/index"
  get "games/gifs" => "games#gifs"

end
