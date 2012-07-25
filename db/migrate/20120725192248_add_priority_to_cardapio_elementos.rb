class AddPriorityToCardapioElementos < ActiveRecord::Migration
  def change
    add_column :cardapio_elementos, :priority, :integer, :default => 0
  end
end
