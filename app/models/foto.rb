class Foto < ActiveRecord::Base
  mount_uploader :picture, FotoUploaderUploader
end
