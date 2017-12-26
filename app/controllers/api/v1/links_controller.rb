class Api::V1::LinksController < ApplicationController
  def index
    @links = Link.all
    render json: @links
  end

  def update
    @link = Link.find(params[:id])

    @link.update(link_params)
    if @link.save
      render json: @link
    else
      render json: {errors: @link.errors.full_messages}, status: 422
    end
  end

  private
  def link_params
    params.permit(:title, :url, :goal_id)
  end

end
