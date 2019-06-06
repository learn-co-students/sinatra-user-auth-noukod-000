class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do|el|
      el.string :name
      el.string :email
      el.string :password
      end
    end
  end
