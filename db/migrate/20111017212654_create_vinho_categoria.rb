class CreateVinhoCategoria < ActiveRecord::Migration
  def change
    create_table :vinho_categoria do |t|

      t.timestamps
    end
  end
end
