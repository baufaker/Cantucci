ActiveAdmin.register VinhoCategoria do
  
  menu :label => "Categorias(vinhos)"
  
  index do 
     column "Nome", :title
     default_actions
   end
end
