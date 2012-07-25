class CardapioElementosController < ApplicationController
  
  def index 
      @categorias = CardapioCategoria.order("priority ASC");
      @elementos = CardapioElemento.order("priority ASC")
  end
  
end
