class Question < ApplicationRecord

  has_many :answers

  def gravatar

  end
  def self.search(search)
    where("body LIKE ?", "%#{search}%")
  end

  end
