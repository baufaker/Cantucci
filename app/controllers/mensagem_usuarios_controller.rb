class MensagemUsuariosController < ApplicationController
  def new
    @mensagem_usuario = MensagemUsuario.new
  end

  def create
    @mensagem_usuario = MensagemUsuario.new(params[:mensagem_usuario])
    if @mensagem_usuario.save
      redirect_to root_url, :notice => "Sua mensagem foi enviada com sucesso! Cantucci te retornara em breve!"
    else
      render :action => 'new'
    end
  end
end
