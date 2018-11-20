require_dependency 'application_controller'

module Candidate
  class ApplicationController < ApplicationController
    layout 'candidate/application'

    protect_from_forgery with: :exception
  end
end
