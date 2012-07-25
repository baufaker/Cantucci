class Evento < ActiveRecord::Base
 mount_uploader :foto, FotoUploader
end
