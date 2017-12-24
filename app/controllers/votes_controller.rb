class VotesController < ApplicationController
  def create
    @vote = poll.votes.build(vote_params)
    @vote.ip_address = request.remote_ip
    if @vote.save
      render json: @vote
    else
      render json: {
        errors: @vote.errors
      }
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:choice_id)
  end

  def poll
    @poll ||= params[:poll_id] == 'newest' ? Poll.last : Poll.find(params[:poll_id])
  end
end
