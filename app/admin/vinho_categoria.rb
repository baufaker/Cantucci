ActiveAdmin.register VinhoCategoria do
  menu :parent => "Carta de Vinhos", :label => "Categorias de Vinhos", :priority => 1
  
  form do |f|
    f.inputs "Categorias" do
            f.input :title
          end
    f.buttons
  end
end
