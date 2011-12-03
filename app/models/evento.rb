class Evento < ActiveRecord::Base
 mount_uploader :foto, FotoUploaderUploader
end
