class EventosController < ApplicationController
  
  def index
    @eventos = Evento.limit(7).order("data_e_hora DESC")
  end
  
end
