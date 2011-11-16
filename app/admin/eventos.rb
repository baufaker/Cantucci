ActiveAdmin.register Evento do
  menu :label => "Agenda", :priority => 3
  
  index do 
    column "Nome do Evento", :title
    column "Descricao", :description do |dsc| 
      truncate(dsc.description).html_safe
    end
    column "Data e Hora", :data_e_hora
    column "Criado em", :created_at
    default_actions
  end
  
  form do |f|
    f.inputs 'Evento' do      
      f.input :title
      f.input :description
      f.input :data_e_hora
      #f.input :foto, as: :file
      #f.input :remote_foto_url, label: 'URL da foto'
      f.buttons
    end
  end
  
end
