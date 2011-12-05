class VinhoCategoria < ActiveRecord::Base
  has_many :vinhos, :dependent => :destroy
  mount_uploader :foto, FotoUploaderUploader
end
