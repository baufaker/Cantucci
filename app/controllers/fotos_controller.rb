class FotosController < ApplicationController
  def index
    @fotos = Foto.all
  end

end
