require_dependency 'candidate/application_controller'

module Candidate
  module Attendance
    class TicketsController < ApplicationController
      
      def index
        @ticket_categories = Candidate::Attendance::TicketCategory.active
      end

      def new
        @ticket_category = Candidate::Attendance::TicketCategory.find(params[:category_id])
      end

      def create
        @ticket = current_user.tickets.new
        @ticket.category_id = params[:category_id]
        
        redirect_to attendance_ticket_steps_path(1) if @ticket.save!
      end


    end
  end
end