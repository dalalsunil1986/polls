class Vote < ApplicationRecord
  belongs_to :poll
  belongs_to :choice

  validates :ip_address, presence: true, uniqueness: {
    scope: [:poll_id, :ip_address],
    message: 'has already voted in this poll'
  }
end
