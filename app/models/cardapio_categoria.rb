class CardapioCategoria < ActiveRecord::Base
  has_many :cardapio_elementos
  mount_uploader :foto, FotoUploaderUploader
end
