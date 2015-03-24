class DropColumnUser < ActiveRecord::Migration
  def change
    remove_column :comments, :user
    remove_column :questions, :user
  end
end
