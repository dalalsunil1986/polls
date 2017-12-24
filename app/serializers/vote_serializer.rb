class VoteSerializer < ActiveModelSerializers::Model
  attributes :id, :poll_id, :choice_id
end