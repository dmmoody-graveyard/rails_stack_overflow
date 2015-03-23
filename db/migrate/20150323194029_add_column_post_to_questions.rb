class AddColumnPostToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :post, :text
  end
end
