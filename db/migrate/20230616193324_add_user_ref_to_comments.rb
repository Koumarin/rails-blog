class AddUserRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
    remove_column :comments, :commenter, :string
  end
end
