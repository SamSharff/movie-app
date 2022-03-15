Rails.application.routes.draw do
get "/actors", controller: "actors", action: "index"
post "/actors", controller: "actors", action: "create"
get "/actors/:id", controller: "actors", action: "show"
patch "/actors/:id", controller: "actors", action: "update"


# get "/actor", controller: "actors", action: "one_actor"
# get "/actor_query_param", controller: "actors", action: "actor_query_param"
# get "/actor_query_param/:id", controller: "actors", action: "actor_query_param"
# post "/actor_query_param", controller: "actors", action: "actor_query_param"

get "/all_movies", controller: "movies", action: "all_movies"
get "/one_movie", controller: "movies", action: "one_movie"
get "/includes", controller: "movies", action: "includes"

end
