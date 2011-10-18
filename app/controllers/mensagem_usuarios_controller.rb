class MensagemUsuariosController < ApplicationController
  def index
    if request.post?
      @mensagem = MensagemUsuario.new(params[:mensagem])
      if @mensagem.save
        redirect_to contato_path
      end
    else
      @mensagem = MensagemUsuario.new
    end
  end

end
