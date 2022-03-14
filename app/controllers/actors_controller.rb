class ActorsController < ApplicationController
  def one_actor
    actor = Actor.find_by(id: 4)
    render json: actor.as_json
  end

# didn't we delete all of our actors except the one remaining in the seeds.rb file? Let me know if I should add more!
  def actor_query_param
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)    
    render json: actor.as_json
  end
  
end