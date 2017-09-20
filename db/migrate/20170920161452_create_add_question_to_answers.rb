class CreateAddQuestionToAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :add_question_to_answers do |t|

      t.timestamps
    end
  end
end
