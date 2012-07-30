class AddPriorityToVinho < ActiveRecord::Migration
  def change
    add_column :vinhos, :priority, :integer, :default => 0
  end
end
