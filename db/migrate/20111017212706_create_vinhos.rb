class CreateVinhos < ActiveRecord::Migration
  def change
    create_table :vinhos do |t|
      t.string :title
      t.text :description
      t.integer :vinho_categoria_id
      t.timestamps
    end
  end
end
