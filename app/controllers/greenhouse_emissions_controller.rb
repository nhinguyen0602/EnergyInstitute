class GreenhouseEmissionsController < ApplicationController
  def index
    greenhouse_missions = GreenhouseEmissionService::Index.call(@current_user.enterprise.id)
    data = {
      greenhouse_missions: greenhouse_missions.map {|greenhouse_mission| GreenhouseEmissionSerializer.new(greenhouse_mission)}
    }
    render_data data
  end
end
