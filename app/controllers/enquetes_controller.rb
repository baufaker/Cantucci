class EnquetesController < ApplicationController
  def iago
    @enquete = Enquete.limit(1).order("created_at ASC")
  end
  
  def resultado
    @option = params[:opcao_usuario]
    @enquete = Enquete.limit(1).order("created_at ASC")
        
    @enquete.each do |enq|
      if(@option == enq.op1)
        enq.cop1 = enq.cop1.next
      elsif(@option == enq.op2)
        enq.cop2 = enq.cop2.next
      else
        enq.cop3 = enq.cop3.next
      end
     
     #chamar na view a acao para o edit/create, amanha   
    
    end
  end
  
  def update
    @enquete = Enquete.limit(1).order("created_at ASC")

    respond_to do |format|
      if @enquete.update_attributes(params[:enquete])
        format.html { redirect_to(@enquete, :notice => 'enquete was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enquete.errors, :status => :unprocessable_entity }
      end
    end
  end
end
