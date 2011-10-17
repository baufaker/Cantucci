class CreateCardapioElementos < ActiveRecord::Migration
  def change
    create_table :cardapio_elementos do |t|
      t.string :title
      t.text :description
      t.integer :cardapio_categoria_id
      t.timestamps
    end
  end
end
