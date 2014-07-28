class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :description

      t.timestamps
    end
  end
end
