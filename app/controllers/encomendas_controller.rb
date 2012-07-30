class EncomendasController < ApplicationController
  def index
    @carrinho = []
    case params[:resposta]
      when nil
        session[:carrinho] = nil
        session[:carrinho] = []
      
      when "Encomendar!"
        if !session[:carrinho].include?(params[:encomenda])
          session[:carrinho] << params[:encomenda]
        end
        
      when "Remover!"
        session[:carrinho].delete_if {|x| x == params[:encomenda]}
    end
    
    @precoTotal = 0.0
    session[:carrinho].each do |en|
      @carrinho << EncomendaElemento.find(en)
      @precoTotal += EncomendaElemento.find(en).price.to_f
    end
    
    @encomendas = EncomendaElemento.all
    
  end
end
