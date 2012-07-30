# encoding: utf-8

ActiveAdmin.register VinhoCategoria do
  menu :parent => "Carta de Vinhos", :label => "Categorias de Vinhos", :priority => 1
  
  index do 
    column "Nome", :title
    default_actions
  end
  
  form do |f|
    f.inputs "Categorias" do
            f.input :title, :label => "Título"
            f.input :priority, :label => "Prioridade"
          end
    f.buttons
  end
end
