class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :destino
      t.date :data
      t.references :user, index: true

      t.timestamps
    end
  end
end
