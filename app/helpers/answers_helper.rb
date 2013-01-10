module AnswersHelper
  def correct_help(answer)
    if answer.correct
      "Correct"
    else
      "Incorrect"
    end
  end
end
