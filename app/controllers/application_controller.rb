class ApplicationController < ActionController::Base
    require 'time'
  
    protect_from_forgery with: :null_session
    # skip_before_action :verify_authenticity_token
  
    @@received_json = nil
    @@messages = [] # Array to store all messages
  
    def index
      @latest_message = @@messages.last
    end
  
    def receive_data
      begin
        json_data = JSON.parse(request.body.read)
        @@received_json = json_data
        message_content = json_data["message"]
        fetch_time = Time.now
  
        # Add the new message to the messages array
        @@messages << { content: message_content, time: fetch_time }
  
        render json: { message: json_data }
      rescue JSON::ParserError => e
        render json: { error: "Invalid JSON format: #{e.message}" }, status: 400
      end
    end
  
    def fetch_data
      latest_message = @@messages.last
      if latest_message
        render json: { message: latest_message[:content], fetched_at: latest_message[:time] }
      else
        render json: { message: nil }
      end
    end
  
    def about
      render 'about'
    end
  
    def sight
      @messages = @@messages
      render 'sight'
    end
  end
  