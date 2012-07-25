# encoding: utf-8

ActiveAdmin.register Evento do
  menu :label => "Agenda", :priority => 3
  
  index do 
    column "Nome do Evento", :title
    column "Descrição", :description do |dsc| 
      truncate(dsc.description).html_safe
    end
    column "Data e Hora", :data_e_hora
    column "Criado em", :created_at
    default_actions
  end
  
  form do |f|
    f.inputs 'Evento' do      
      f.input :title, :label => "Título"
      f.input :description, :label => "Descrição"
      f.input :data_e_hora, :label => "Data e Hora"
      f.input :foto, as: :file, :label => "Foto"
      #f.input :remote_foto_url, label: 'URL da foto'
      f.buttons
    end
  end
  
end
