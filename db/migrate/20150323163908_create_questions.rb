class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :user
      t.string :inquiry

      t.timestamps
    end
  end
end
