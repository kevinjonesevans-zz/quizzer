class RenameTotalQuestionsToUseUnderscroe < ActiveRecord::Migration
  def up
    change_table :quizzes do |t|
      t.rename :totalQuestions, :total_questions
    end
  end

  def down
  end
end
