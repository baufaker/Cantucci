class Foto < ActiveRecord::Base
  mount_uploader :picture, FotoUploader
end
