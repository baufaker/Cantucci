class VinhoCategoria < ActiveRecord::Base
  has_many :vinhos, :dependent => :destroy

end
