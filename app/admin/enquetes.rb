# encoding: utf-8

ActiveAdmin.register Enquete do
  
  menu :parent => "Páginas"
  
  form do |f|
    f.inputs "Enquete" do
            f.input :pergunta, :label => "Pergunta"
            f.input :op1, :label => "Opção 1"
            f.input :op2, :label => "Opção 2"
            f.input :op3, :label => "Opção 3"
          end
    f.buttons
  end
  
  index do 
    column "Pergunta", :pergunta
    column "Opção 1", :op1
    column "Opção 2", :op2
    column "Opção 3", :op3
    column "Num. Votos Op. 1", :cop1
    column "Num. Votos Op. 2", :cop2
    column "Num. Votos Op. 3", :cop3
    column "Criada em", :created_at
  
    default_actions
  end
  
end
