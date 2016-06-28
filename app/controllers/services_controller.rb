# Controller for services views
class ServicesController < ApplicationController

  def our_services
    @posts = Post.all.service.sort_by &:created_at
  end
end
