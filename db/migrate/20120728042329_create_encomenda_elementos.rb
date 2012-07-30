class CreateEncomendaElementos < ActiveRecord::Migration
  def change
    create_table :encomenda_elementos do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :photo
      t.integer :priority

      t.timestamps
    end
  end
end
