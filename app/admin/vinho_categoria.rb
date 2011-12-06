ActiveAdmin.register VinhoCategoria do
  
  menu :label => "Categorias(vinhos)"
  
  index do 
     column "Nome", :title
     default_actions
   end
   
   form do |f|
     f.inputs "Categorias" do
             f.input :title
             #f.input :foto, as: :file
           end
     f.buttons
   end
end
