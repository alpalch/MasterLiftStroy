# Controller for contacts views
class ContactsController < ApplicationController

  def contacts
    @posts = Post.all.contacts.sort_by &:created_at
  end
end
