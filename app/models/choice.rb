class Choice < ApplicationRecord
  belongs_to :poll

  validates :text, presence: true
end
