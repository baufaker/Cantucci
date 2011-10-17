class VinhosController < ApplicationController
  
  def index 
      @categorias = VinhoCategoria.all
      @vinhos = Vinho.all
  end
  
end
