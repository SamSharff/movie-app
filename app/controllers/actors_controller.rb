class ActorController < ApplicationController
  def all_actors
    actor = Actors.find_by(id: 4)
    render json: actor.as_json
  end
end
