class AddPriorityToVinhoCategoria < ActiveRecord::Migration
  def change
    add_column :vinho_categoria, :priority, :integer, :default => 0
  end
end
