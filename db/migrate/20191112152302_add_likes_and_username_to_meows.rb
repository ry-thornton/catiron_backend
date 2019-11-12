class AddLikesAndUsernameToMeows < ActiveRecord::Migration[5.2]
  def change
    add_column :meows, :likes, :integer
    add_column :meows, :username, :string
  end
end
