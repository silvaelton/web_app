require_dependency 'candidate/application_controller'

module Candidate
  class SessionsController < ApplicationController

    def new
      @session = Candidate::Session.new
    end
    
    def create
      @session = Candidate::Session.new(set_params)
      if @session.valid?
        session[:candidate_user_id] = @session.id
        redirect_to candidate.root_path
      end
    end

    private

    def set_params
      params.require(:session).permit(:cpf, :password)
    end

  end
end