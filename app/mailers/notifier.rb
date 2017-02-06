class Notifier < ActionMailer::Base
  default from: "from@example.com"
  
  def book_added(book)
	 @name= book.name
	  @author=book.author
	  mail(:to=>"vivek.patel022@gmail.com",:subject=>"ALERT : A new book has been added")
  end
   end
