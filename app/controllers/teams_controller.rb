class TeamsController < ApplicationController
before_action :paid?, only: [:index]

    def index

       if session[:coach_id] != nil
         @coach = Coach.find(session[:coach_id])
       elsif session[:user_id] != nil
        @user = User.find(session[:user_id])
       end

      @conversation = Conversation.new
      @note = Note.new

    end

  end
