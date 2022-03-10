class Actor < ApplicationRecord
  def all_actors
    actor = Actors.find
    render json: actor.as_json
  end
end
