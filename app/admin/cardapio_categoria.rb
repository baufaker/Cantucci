# encoding: utf-8

ActiveAdmin.register CardapioCategoria do
  menu :parent => "Cardápio", :label => "Categorias(À La Carte)", :priority => 0
  
  index do 
     column "Nome", :title
     column "Prioridade", :priority
     default_actions
   end
   
   form do |f|
     f.inputs "Categorias" do
             f.input :title, :label => "Título"
             f.input :priority, :label => "Prioridade"
             f.input :foto, as: :file, :label => "Foto"
           end
     f.buttons
   end
end
