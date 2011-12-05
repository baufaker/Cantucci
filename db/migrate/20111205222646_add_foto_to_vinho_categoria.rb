class AddFotoToVinhoCategoria < ActiveRecord::Migration
  def change
    add_column :vinho_categoria, :foto, :string
  end
end
