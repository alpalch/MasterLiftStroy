# Controller for services views
class ServicesController < ApplicationController

  def our_services
    @posts = Post.all.service
  end
end
