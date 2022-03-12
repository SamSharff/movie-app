class ActorsController < ApplicationController
  def one_actor
    actor = Actor.find_by(id: 4)
    render json: actor.as_json
  end
end