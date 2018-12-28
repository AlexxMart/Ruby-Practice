class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end

=begin 

- To create a new instance we need to store the class in a variable and instatiate it. E.g: article = Article.new("Name of the title", "content of the article")

- To save the instance we need to run the name of the variable with ".save". E.g: article.save

- To create and save the article, or any class instance, in one shot we can user ".create". E.g: Article.create("name of the title", "content of the article").save

- To Edit we need to target the specific article we want to edit using its ID. E.g: article = Article.find(2). The variable will hold the value of the Article we targeted with the ".find" method. Then we need to access, with dot notation, the specific attribute we want to update from the article, and then we run the name of the variable.save to commit the change to the DB.

- To delete an article we need to target it the same way we edit it, but run the name of the variable + ".destroy" to delete that entry, this method will automatically commit the change to the DB and return the deleted article.

- When a validation is added and the information is not received in the DB we can check if there are errors by appending ".errors.any?" to the name of the variable that instantiates the class. E.g: article.errors.any?; to see a full description of the errors we append ".errors.full_messages"

=end