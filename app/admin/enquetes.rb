ActiveAdmin.register Enquete do
  form do |f|
    f.inputs "Enquete" do
            f.input :pergunta
            f.input :op1
            f.input :op2
            f.input :op3
            f.input :cop1
            f.input :cop2
            f.input :cop3
          end
    f.buttons
  end
  
  index do 
    column "Pergunta", :pergunta
    column "Opcao1", :op1
    column "Opcao2", :op2
    column "Opcao2", :op3
    column "Votos 1", :cop1
    column "Votos 2", :cop2
    column "Votos 3", :cop3

    column "Criada em", :created_at
  
  end
  
end
