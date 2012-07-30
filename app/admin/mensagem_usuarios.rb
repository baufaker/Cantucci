# encoding: utf-8

ActiveAdmin.register MensagemUsuario do
  

  menu :label => "Mensagens de Usuários", :priority => 2

  actions :index, :show, :destroy
  
  index do 
    column "Nome", :name
    column "E-mail", :email
    column "Telefone", :phone
    column "Assunto", :subject
    column "Mensagem", :message do |msg| 
      truncate(msg.message).html_safe
    end
    column "Recebido em", :created_at
    # column "Ações" do |msg|
    #   link_to "View", admin_mensagem_usuario_path(msg.id)
    #   #link_to "Deletar", destroy_admin_mensagem_usuario_path(msg.id)
    # end
    default_actions
  end
  
  show do
    h3 mensagem_usuario.name
    h2 mensagem_usuario.email
    h2 mensagem_usuario.phone
    h2 mensagem_usuario.subject
    div do
      mensagem_usuario.message.html_safe
    end
  end
end
