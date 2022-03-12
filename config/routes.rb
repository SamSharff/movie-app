Rails.application.routes.draw do

get "/actor", controller: "actors", action: "one_actor"
get "/all_movies", controller: "movies", action: "all_movies"
end
