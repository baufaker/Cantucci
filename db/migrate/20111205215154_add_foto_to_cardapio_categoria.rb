class AddFotoToCardapioCategoria < ActiveRecord::Migration
  def change
    add_column :cardapio_categoria, :foto, :string
  end
end
