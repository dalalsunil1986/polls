class PollsController < ApplicationController
  def index
    render json: {
      polls: ActiveModel::Serializer::CollectionSerializer.new(
        polls,
        serializer: PollSerializer
      ),
      client_id: request.remote_ip,
      total: polls.count
    }
  end

  def show
    render json: {
      poll: PollSerializer.new(poll),
      client_id: request.remote_ip,
    }
  end

  private

  def polls
    @polls ||= Poll.all
  end

  def poll
    @poll ||= Poll.find(params[:id])
  end
end
