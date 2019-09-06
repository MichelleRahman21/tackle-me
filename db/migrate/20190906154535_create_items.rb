class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :color
      t.string :season
      t.string :status

      t.timestamps
    end
  end
end
