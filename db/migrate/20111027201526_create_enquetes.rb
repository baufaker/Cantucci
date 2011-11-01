class CreateEnquetes < ActiveRecord::Migration
  def change
    create_table :enquetes do |t|
      t.string :pergunta
      t.string :op1
      t.string :op2
      t.string :op3
      t.integer :cop1, :default => 0
      t.integer :cop2, :default => 0
      t.integer :cop3, :default => 0

      t.timestamps
    end
  end
end
