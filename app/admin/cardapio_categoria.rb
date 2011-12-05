ActiveAdmin.register CardapioCategoria do
  
  menu :label => "Categorias(cardapio)"
  
  index do 
     column "Nome", :title
     default_actions
   end
   
   form do |f|
     f.inputs "Categorias" do
             f.input :title
             f.input :foto, as: :file
           end
     f.buttons
   end
end
