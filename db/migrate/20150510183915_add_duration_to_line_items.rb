class AddDurationToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :duration, :integer, default: 1
  end
end
