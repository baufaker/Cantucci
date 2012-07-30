class Vinho < ActiveRecord::Base
  belongs_to :vinho_categoria
  
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :vinho_categoria
end
