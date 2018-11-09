class PollSerializer <  ActiveModel::Serializer
  attributes :id, :question, :results

  has_many :choices
  has_many :votes

  def results
    object.choices.map do |choice|
      {
        choice: choice.text,
        votes: choice.votes.count
      }
    end.sort {|a,b| b[:votes] <=> a[:votes]}
  end

end