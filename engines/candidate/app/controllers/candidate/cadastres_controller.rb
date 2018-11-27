require_dependency 'candidate/application_controller'

module Candidate
  class CadastresController < ApplicationController
    before_action :authenticate_user!
    
    def index
    end

    def show
      @cadastre = current_user
    end

  end
end