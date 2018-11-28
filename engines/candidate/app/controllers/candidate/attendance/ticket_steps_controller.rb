require_dependency 'candidate/application_controller'

module Candidate
  module Attendance
    class TicketStepsController < ApplicationController
      before_action :set_ticket

      def index
      end
      
      def show
      end
      
      private

      def set_ticket
        @ticket = Candidate::Attendance::Ticket.find(params[:ticket_id])
      end
    end
  end
end