class CreateCardapioElementos < ActiveRecord::Migration
  def change
    create_table :cardapio_elementos do |t|

      t.timestamps
    end
  end
end
