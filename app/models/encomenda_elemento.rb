class EncomendaElemento < ActiveRecord::Base
  mount_uploader :photo, FotoUploader
end
