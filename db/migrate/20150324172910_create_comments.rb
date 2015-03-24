class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :answer
      t.integer :question_id

      t.timestamps
    end
  end
end
