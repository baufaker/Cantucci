ActiveAdmin.register CardapioElemento do

  menu :label => "Comidas e Bebidas", :priority => 4
  
  index do 
    column "Nome", :title
    column "Descricao", :description do |el| 
      truncate(el.description).html_safe
    end
    column "Categoria", :cardapio_categoria
    column "Modificado em", :updated_at
    default_actions
  end
  
  show do
    h3 cardapio_elemento.title
    div do
      cardapio_elemento.description.html_safe
    end
  end
  
  form do |f|
    f.inputs "Elementos" do
            f.input :cardapio_categoria
            f.input :title
            f.input :description
          end
    f.buttons
  end
  
end
