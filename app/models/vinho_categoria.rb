class VinhoCategoria < ActiveRecord::Base
  has_many :vinhos, :dependent => :destroy
  
  validates_presence_of :title
  validates_uniqueness_of :title
end
