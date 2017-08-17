class Answer < ApplicationRecord
  belongs_to :question
belongs_to :user
  def gravatar

end

end