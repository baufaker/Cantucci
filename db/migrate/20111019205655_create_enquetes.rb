class CreateEnquetes < ActiveRecord::Migration
  def change
    create_table :enquetes do |t|
      t.string :question
      t.integer :answer_yes
      t.integer :answer_no
      t.timestamps
    end
  end
end
