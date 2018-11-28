require_dependency 'support/application_policy'

module Candidate
  module Attendance
    class TicketPolicy < Support::ApplicationPolicy

      def is_allow?(candidate)
        if self.filter_situation
        end

        if self.filter_convocation
        end

        if self.filter_program
        end 

        if self.filter_sql
        end

        if self.due
        end

        if self.unique
          return false if candidate.tickets.where(category_id: self.id).present?
        end

        true
      end 

    end
  end
end