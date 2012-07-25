class AddPriorityToCardapioCategoria < ActiveRecord::Migration
  def change
    add_column :cardapio_categoria, :priority, :integer, :default => 0
  end
end
