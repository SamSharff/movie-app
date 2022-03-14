Rails.application.routes.draw do

get "/actor", controller: "actors", action: "one_actor"
get "/all_movies", controller: "movies", action: "all_movies"
get "/one_movie", controller: "movies", action: "one_movie"
get "/includes", controller: "movies", action: "includes"
get "/actor_query_param", controller: "actors", action: "actor_query_param"
get "/actor_query_param/:id", controller: "actors", action: "actor_query_param"
post "/actor_query_param", controller: "actors", action: "actor_query_param"

end
