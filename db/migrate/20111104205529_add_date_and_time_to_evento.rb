class AddDateAndTimeToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :data_e_hora, :datetime
  end
end
