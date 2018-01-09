class CreateRegistries < ActiveRecord::Migration[5.1]
  def change
    create_table :registries do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
