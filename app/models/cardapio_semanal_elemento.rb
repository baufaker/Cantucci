class CardapioSemanalElemento < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :week_day
  
  def self.find_by_day(day)
    CardapioSemanalElemento.order("priority ASC").where(:week_day => day)
  end
end
