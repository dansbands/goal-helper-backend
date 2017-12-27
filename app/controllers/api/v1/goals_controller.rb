class Api::V1::GoalsController < ApplicationController
  # before_action :set_goal, only: [:show,:update,:destroy]

  def index
    @goals = Goal.all
    render json: @goals
  end

  def create
    @goal = Goal.create(goal_params)
    render json: @goal, status: 201
  end

  def show
    @goal = Goal.find(params[:id])
    render json: @goal, status: 200
  end

  def update
    @goal = Goal.find(params[:id])

    @goal.update(goal_params)
    if @goal.save
      render json: @goal
    else
      render json: {errors: @goal.errors.full_messages}, status: 422
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

  end

  private
  def goal_params
    params.permit(:title, :notes, :user_id)
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end
