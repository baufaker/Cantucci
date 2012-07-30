class CardapioCategoria < ActiveRecord::Base
  has_many :cardapio_elementos
  mount_uploader :foto, FotoUploader
  
  validates_presence_of :title
  validates_uniqueness_of :title
end
