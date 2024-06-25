class ApplicationController < ActionController::Base

    protect_from_forgery with: :null_session
    #skip_before_action :verify_authenticity_token

    @@received_json = nil
    @@message_content = nil
    @@time = nil
    
    def index
        @message_content = @@message_content
        @time = @@time
    end

    def receive_data
        begin
            json_data = JSON.parse(request.body.read)
            @@received_json = json_data
            @@message_content = json_data["message"]
            @@time = Time.now
            render json: { message: json_data }
        rescue JSON::ParserError => e
            render json: { error: "Invalid JSON format: #{e.message}" }, status: 400
        end
    end

    def fetch_data
        render json: { message: @@message_content }
    end

end
