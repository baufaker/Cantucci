# encoding: utf-8

ActiveAdmin.register CardapioElemento do
  menu :parent => "Cardápio", :label => "Comidas e Bebidas(À La Carte)", :priority => 1
  
  index do 
    column "Nome", :title
    column "Descrição", :description do |el| 
      truncate(el.description).html_safe
    end
    column "Categoria", :cardapio_categoria
    column "Prioridade", :priority
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
            f.input :cardapio_categoria, :label => "Categoria"
            f.input :title, :label => "Título"
            f.input :priority, :label => "Prioridade"
            f.input :description, :label => "Descrição"
          end
    f.buttons
  end
  
end
