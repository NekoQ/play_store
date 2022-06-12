class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
