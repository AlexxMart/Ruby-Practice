=begin
  - the "add_column" method accepts three arguments: the table's name, the attribute's name, and its type
  - for time stamps it is mandatory that the names are ":created_at" and ":updated_at", otherwise rails will not track them; their type has to be ":datetime"
=end

class AddDescriptionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
