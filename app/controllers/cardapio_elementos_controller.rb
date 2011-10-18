class CardapioElementosController < ApplicationController
  
  def index 
      @categorias = CardapioCategoria.all
      @elementos = CardapioElemento.all
  end
  
end
