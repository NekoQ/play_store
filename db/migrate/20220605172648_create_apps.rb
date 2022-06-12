class CreateApps < ActiveRecord::Migration[6.1]
  def change
    create_table :apps do |t|
      t.string :title, null: false
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
