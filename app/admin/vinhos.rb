ActiveAdmin.register Vinho do
  index do 
    column "Nome", :title
    column "Descricao", :description do |vinhos|
      simple_format truncate(vinhos.description)
    end
    column "Categoria", :vinho_categoria
    column "Modificado em", :updated_at
    default_actions
  end
  
  show do
    h3 vinho.title
    div do
      simple_format vinho.description
    end
  end
  
  form do |f|
    f.inputs "Vinhos" do
            f.input :vinho_categoria
            f.input :title
            f.input :description
          end
    f.buttons
  end
end
