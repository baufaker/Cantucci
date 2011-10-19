ActiveAdmin.register MensagemUsuario do
  index do 
    column "Nome", :name
    column "E-mail", :email
    column "Telefone", :phone
    column "Mensagem", :message do |msg| 
      truncate(msg.message).html_safe
    end
    column "Recebido em", :created_at
    default_actions
  end
  
  show do
    h3 mensagem_usuario.name
    h2 mensagem_usuario.email
    h2 mensagem_usuario.phone
    div do
      mensagem_usuario.message.html_safe
    end
  end
end
