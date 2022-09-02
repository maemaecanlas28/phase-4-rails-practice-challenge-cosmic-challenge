class MissionsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        mission = Mission.create!(params.permit(:name, :scientist_id, :planet_id))
        render json: mission.planet, status: :created
    end

    private

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

end
