# encoding: utf-8

ActiveAdmin.register CardapioSemanalElemento do
  
  menu :parent => "Cardápio", :label => "Cardápio Semanal"
  
  index do 
    column "Nome", :title
    column "Descrição", :description do |el| 
      truncate(el.description).html_safe
    end
    column "Prioridade", :priority
    column "Modificado em", :updated_at
    default_actions
  end
  
  form do |f|
    f.inputs "Elementos" do
            f.input :title, :label => "Título"
            f.input :week_day,  :as => :select, :collection => { "Domingo" => 0, "Segunda" => 1, 
              "Terça" => 2, "Quarta" => 3, "Quinta" => 4, "Sexta" => 5, "Sábado" => 6 }, :label => 
              "Dia da semana"
            f.input :priority, :label => "Prioridade"
            f.input :description, :label => "Descrição"
          end
    f.buttons
  end
  
  action_item :only => :index do
    link_to('Apagar todos', destroy_all_admin_cardapio_semanal_elementos_path)
  end
  
  collection_action :destroy_all, :method => :get do
    CardapioSemanalElemento.destroy_all
    redirect_to :action => :index, :notice => "Todos os elementos foram apagados com sucesso!"
  end
end