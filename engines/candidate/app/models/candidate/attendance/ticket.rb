require_dependency 'support/attendance/ticket'

module Candidate
  module Attendance
    class Ticket < Support::Attendance::Ticket
      
      belongs_to :cadastre, class_name: 'Candidate::Cadastre'
      belongs_to :category, class_name: 'Candidate::Attendance::TicketCategory', foreign_key: :category_id
      
      validates :category_id, :cadastre_id, presence: true
      validate  :allow_create?

      after_create :set_situation

      private

      def set_situation
      end

      def allow_create?
        cadastre = Candidate::Cadastre.find_by(id: self.cadastre_id)
        category = Candidate::Attendance::TicketCategory.find_by(id: self.category_id)

        if !category.status
          errors.add(:base, 'Categoria não disponível.') 
          return false
        end

        if cadastre.nil?
          errors.add(:base, 'Cadastro não encontrado.')  
          return false
        end

        if !cadastre.policy.allow_new_ticket?
          errors.add(:base, 'Cadastro não tem permissão para iniciar um novo atendimento.')
          return false
        end
        
        if !category.policy.is_allow?(cadastre)
          errors.add(:base, 'Categoria não disponível.')
          return false
        end

      end
    end
  end
end