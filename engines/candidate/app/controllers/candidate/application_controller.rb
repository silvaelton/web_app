require_dependency 'application_controller'

module Candidate
  class ApplicationController < ApplicationController
    layout 'candidate/application'

    protect_from_forgery with: :exception

    helper_method :authenticate_user!, :current_user

    private

    def authenticate_user!
      return true if !current_user.nil?
    
      redirect_to candidate.new_session_path if controller_name != 'sessions'
    end

    def current_user
      Candidate::Cadastre.find_by(id: session[:candidate_user_id])
    end


  end
end
