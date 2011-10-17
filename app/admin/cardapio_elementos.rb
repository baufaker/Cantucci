ActiveAdmin.register CardapioElemento do
  index do 
    column "Nome", :title
    column "Descricao", :description do |el|
      simple_format truncate(el.description)
    end
    column "Categoria", :cardapio_categoria_id
    column "Modificado em", :updated_at
    default_actions
  end
  
  show do
    h3 cardapioelemento.title
    div do
      simple_format cardapioelemento.description
    end
  end
  
  form do |f|
    f.inputs "Elementos" do
            f.input :title
            f.input :description
          end
    f.buttons
  end
  
end
