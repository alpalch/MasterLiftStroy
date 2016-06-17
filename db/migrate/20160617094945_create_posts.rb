class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, default: ''
      t.text   :content, default: ''

      t.timestamps null: false
    end
  end
end
