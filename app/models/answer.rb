class Answer < ApplicationRecord
  belongs_to :question

  def gravatar
  "http://gravatar/avatar/#{Digest::MD5.hexdigest(email)}"
end

end