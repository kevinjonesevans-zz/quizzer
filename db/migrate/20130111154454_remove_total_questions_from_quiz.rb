class RemoveTotalQuestionsFromQuiz < ActiveRecord::Migration
  def up
    remove_column :quizzes, :total_questions
  end

  def down
    add_column :quizzes, :total_questions
  end
end
