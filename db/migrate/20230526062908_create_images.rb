class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
