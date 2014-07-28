class AddFieldsToCost < ActiveRecord::Migration
  def change
    add_reference :costs, :tipo, index: true
  end
end
