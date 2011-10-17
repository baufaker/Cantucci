class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :title
      t.text :description
      
      
      t.timestamps
    end
  end
end
