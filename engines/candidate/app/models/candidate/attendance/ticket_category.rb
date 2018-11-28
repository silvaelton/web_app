require_dependency 'support/attendance/ticket_category'

module Candidate
  module Attendance
    class TicketCategory < Support::Attendance::TicketCategory
      has_many :category_steps, class_name: 'Candidate::Attendance::TicketCategoryStep', foreign_key: :ticket_category_id 

      scope :active, -> { status_active }

      def policy
        call_policy('Candidate::Attendance::TicketPolicy', self)
      end
    end
  end
end