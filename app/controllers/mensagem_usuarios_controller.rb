class MensagemUsuariosController < ApplicationController
  def index
    if request.post?
      @blog = Blog.new(params[:blog])
    else
      @blog = Blog.new
    end
  end

end
