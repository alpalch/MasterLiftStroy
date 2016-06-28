# Controller for lifts views
class LiftsController < ApplicationController

  def shaft_lifts
    @posts = Post.all.shaft_lift.sort_by &:created_at
  end

  def service_lifts
    @posts = Post.all.service_lift.sort_by &:created_at
  end

  def tower_lifts
    @posts = Post.all.tower_lift.sort_by &:created_at
  end
end
