# Controller for contacts views
class ContactsController < ApplicationController

  def contacts
    @posts = Post.all.contacts
  end
end
