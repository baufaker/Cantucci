class CreateVinhos < ActiveRecord::Migration
  def change
    create_table :vinhos do |t|

      t.timestamps
    end
  end
end
