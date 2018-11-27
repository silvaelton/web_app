module Candidate
  class Session
    include ActiveModel::Model

    attr_accessor :cpf, :password, :id

    validates :cpf, cpf: true, presence: true
    validates :password, presence: true
    validate  :authenticate

    private

    def authenticate
      cadastre = ::Candidate::Cadastre.find_by(cpf: self.cpf)
      cadastre_password = cadastre.password rescue nil

      if cadastre.nil? || self.password != cadastre_password 
        errors.add(:base, 'CPF ou senha incorreto.')
      else
        self.id = cadastre.id
      end
    end
  end
end