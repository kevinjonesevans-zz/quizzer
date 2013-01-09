class AddQuizIdToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.integer :quiz_id
    end
  end
end
