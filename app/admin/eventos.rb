ActiveAdmin.register Evento do
  menu :label => "Agenda", :priority => 3
  
  index do 
    column "Nome do Evento", :title
    column "Descricao", :description do |dsc| 
      truncate(dsc.description).html_safe
    end
    column "Criado em", :created_at
    default_actions
  end
  
end
