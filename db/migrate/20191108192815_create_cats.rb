class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|

      t.string :name
      t.string :password
      t.string :email
      t.string :nickname
      t.string :bio

      t.timestamps
    end
  end
end
