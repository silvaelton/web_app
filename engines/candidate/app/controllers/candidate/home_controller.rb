require_dependency 'candidate/application_controller'

module Candidate
  class HomeController < ApplicationController
    before_action :authenticate_user!
    
    def index
    end

  end
end