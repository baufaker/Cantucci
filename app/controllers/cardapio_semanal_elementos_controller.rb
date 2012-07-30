class CardapioSemanalElementosController < ApplicationController
  def index
    @domingo = []
    @segunda = []
    @terca = []
    @quarta = []
    @quinta = []
    @sexta = []
    @sabado = []
    
    @domingo = CardapioSemanalElemento.find_by_day(0)
    @segunda = CardapioSemanalElemento.find_by_day(1)
    @terca = CardapioSemanalElemento.find_by_day(2)
    @quarta = CardapioSemanalElemento.find_by_day(3)
    @quinta = CardapioSemanalElemento.find_by_day(4)
    @sexta = CardapioSemanalElemento.find_by_day(5)
    @sabado = CardapioSemanalElemento.find_by_day(6)
  end
end
