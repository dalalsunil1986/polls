class PollSerializer <  ActiveModel::Serializer
  attributes :id, :question

  has_many :choices
  has_many :votes
end