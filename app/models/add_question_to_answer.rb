class AddQuestionToAnswer < ApplicationRecord
  def change
    add_reference :answers, :question, foreign_key: true
  end
end
