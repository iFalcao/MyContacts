class Contato < ActiveRecord::Base
  belongs_to :tipo
  has_one :endereco
  has_many :telefones
  
  validates :nome, presence: true, length: {minimum: 3}
  validates :email, presence: true
  
  accepts_nested_attributes_for :telefones, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :endereco
end
