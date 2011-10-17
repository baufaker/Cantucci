class CreateCardapioCategoria < ActiveRecord::Migration
  def change
    create_table :cardapio_categoria do |t|
      t.string :title
      t.timestamps
    end
  end
end
