ActiveAdmin.register Vinho do
  
  menu :parent => "Carta de Vinhos", :priority => 2
  
  index do 
    column "Nome", :title
    column "Descricao", :description do |vinhos|
      truncate(vinhos.description).html_safe
    end
    column "Categoria", :vinho_categoria
    column "Modificado em", :updated_at
    default_actions
  end
  
  show do
    h3 vinho.title
    div do
      vinho.description.html_safe
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
