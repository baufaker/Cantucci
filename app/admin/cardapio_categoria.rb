ActiveAdmin.register CardapioCategoria do
  
  menu :label => "Categorias(cardapio)"
  
  index do 
     column "Nome", :title
     default_actions
   end
end
