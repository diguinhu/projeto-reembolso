class CreateSchedulings < ActiveRecord::Migration
  def change
    create_table :schedulings do |t|
      t.references :user, index: true
      t.references :travel, index: true

      t.timestamps
    end
  end
end
