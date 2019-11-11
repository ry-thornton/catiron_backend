class CreateMeows < ActiveRecord::Migration[5.2]
  def change
    create_table :meows do |t|
      t.text :body
      t.integer :cat_id

      t.timestamps
    end
  end
end
