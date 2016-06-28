class AddPageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :page, :string, default: ''
  end
end
