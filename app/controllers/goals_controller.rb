class GoalsController < ApplicationController
  def index
    @goals = Goal.order(:position)
  end
end
