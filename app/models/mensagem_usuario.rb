class MensagemUsuario < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :subject, :message
  
  validates_presence_of :name, :email, :phone, :subject, :message
end
