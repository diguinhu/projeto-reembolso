class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :tipo
      t.decimal :valor
      t.date :data
      t.references :travel, index: true

      t.timestamps
    end
  end
end
