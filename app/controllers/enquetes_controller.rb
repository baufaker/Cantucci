class EnquetesController < ApplicationController
  def iago
    @enquete = Enquete.limit(1).order("created_at DESC")
  end
  
  def resultado
    @option = params[:opcao_usuario]
    @enquete = Enquete.limit(1).order("created_at DESC")
   
    @enquete.each do |enq|
      if(@option == enq.op1)
        enq.update_attributes(:cop1 => enq.cop1.next)
      elsif(@option == enq.op2)
        enq.update_attributes(:cop2 => enq.cop2.next)
      else
        enq.update_attributes(:cop3 => enq.cop3.next)
      end
  
    end
  end
  
end
