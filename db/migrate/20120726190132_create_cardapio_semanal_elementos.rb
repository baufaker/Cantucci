class CreateCardapioSemanalElementos < ActiveRecord::Migration
  def change
    create_table :cardapio_semanal_elementos do |t|
      t.string :title
      t.text :description
      t.integer :week_day
      t.integer :priority, :default => 0

      t.timestamps
    end
  end
end
