class AddFotoToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :foto, :string
  end
end
