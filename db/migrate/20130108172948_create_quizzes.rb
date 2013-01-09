class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :category
      t.string :author
      t.integer :totalQuestions

      t.timestamps
    end
  end
end
