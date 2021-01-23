class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
    def current_user
        User.first
    end

    private
    def handle_record_not_found
        render json: "Record not found.", status: :not_found
    end
end
