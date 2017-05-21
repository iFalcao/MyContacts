class Tipo < ActiveRecord::Base
  has_many :contatos
  validates :descricao, presence: true
end
