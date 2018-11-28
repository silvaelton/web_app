require_dependency 'support/application_policy'

module Candidate
  class CadastrePolicy < Support::ApplicationPolicy

    def allow_new_ticket?
      !self.tickets.present?
    end

  end
end