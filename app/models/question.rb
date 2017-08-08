class Question < ApplicationRecord

  has_many :answers

  def gravatar
    "http://gravatar/avatar/#{Digest::MD5.hexdigest(email)}"
  end

  end
