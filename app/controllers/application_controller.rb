class ApplicationController < ActionController::Base

    protect_from_forgery with: :null_session
    #skip_before_action :verify_authenticity_token

    @@received_json = nil
  
    def index
        @received_json = @@received_json
    end

    #def receive_data
        #@@received_json = request.raw_post
        #render json: @@received_json
    def receive_data
        @@received_json = request.body.read
        render json: { message: JSON.parse(@@received_json) }
    rescue JSON::ParserError => e
        render json: { error: "Invalid JSON format: #{e.message}" }, status: 400
    end

    def fetch_data
        #render json: @@received_json

        render json: { message: @@received_json }
    end

end
