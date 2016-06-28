# Controller for lifts views
class LiftsController < ApplicationController

  def shaft_lifts
    @posts = Post.all.shaft_lift
  end

  def service_lifts
    @posts = Post.all.service_lift
  end

  def tower_lifts
    @posts = Post.all.tower_lift
  end
end
