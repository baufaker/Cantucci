class CardapioElemento < ActiveRecord::Base
  belongs_to :cardapio_categoria
  
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :cardapio_categoria
end
