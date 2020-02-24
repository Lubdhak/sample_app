# rails generate migration rename_mytable

class RenameMytable < ActiveRecord::Migration[6.0]
  def change
    rename_table :mytables, :posts
  end
end

# rails db:migrate
