# encoding: utf-8

ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  

  
  section "Últimos vinhos adicionados", :priority => 3 do
    @vinhos = Vinho.limit(5).order("updated_at DESC")
    ul do
      @vinhos.each do |vinho|
        li link_to(vinho.title, admin_vinho_path(vinho))
      end
    end
  end
  
  
  section "Últimas enquetes", :priority => 1 do
    @enquetes = Enquete.limit(5).order("updated_at DESC")
    ul do
      @enquetes.each do |enquete|
        li link_to(enquete.pergunta, admin_enquete_path(enquete))
      end
    end
  end
  
  section "Últimos eventos adicionados", :priority => 2 do
    @eventos = Evento.limit(5).order("updated_at DESC")
    ul do
      @eventos.each do |evento|
        li link_to(evento.title, admin_evento_path(evento))
      end
    end
  end
  
  section "Últimos Comes e Bebes adicionados", :priority => 4 do
    @comesebebes = CardapioElemento.limit(5).order("updated_at DESC")
    ul do
      @comesebebes.each do |el|
        li link_to(el.title, admin_cardapio_elemento_path(el))
      end
    end
  end
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
