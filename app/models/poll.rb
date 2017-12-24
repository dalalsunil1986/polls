class Poll < ApplicationRecord
  has_many :choices
  has_many :votes

  validates :question, presence: true
end
