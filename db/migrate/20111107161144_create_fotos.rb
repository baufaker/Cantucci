class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :picture

      t.timestamps
    end
  end
end
