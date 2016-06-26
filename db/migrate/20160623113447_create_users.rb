class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string 'email', default: '', uniqueness: true
      t.string 'password', default: ''

      t.timestamps null: false
    end
  end
end
