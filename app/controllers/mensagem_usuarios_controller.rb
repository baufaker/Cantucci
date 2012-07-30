# encoding: utf-8

class MensagemUsuariosController < ApplicationController
  def new
    @mensagem_usuario = MensagemUsuario.new
  end

  def create
    @mensagem_usuario = MensagemUsuario.new(params[:mensagem_usuario])
    if @mensagem_usuario.save
      redirect_to contato_path, :notice => "Sua mensagem foi enviada com sucesso! Cantucci te retornará em breve!"
    else
      redirect_to contato_path, :notice => "Por favor, preencha todos os campos!"
      # render :action => 'new', :notice => "Por favor, preencha todos os campos!"
    end
  end
end
