class ApplicationController < ActionController::Base

    #protect_from_forgery with: :null_session
    
    @@received_json = nil
    
    def index
        @received_json = @@received_json
    end

    def receive_data
        @@received_json = request.raw_post
        render json: @@received_json
    end

end
