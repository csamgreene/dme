class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.string :title

      t.timestamps
    end
  end
end
