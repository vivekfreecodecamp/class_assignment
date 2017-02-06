class Book < ActiveRecord::Base
	self.per_page = 3
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length:{ minimum: 3, message:"minimum 3 chars"}
	validates :author,presence: true
	#before_validation :normalize_name, on: :create
	
	#before_save :merge_book_names
	#after_destroy :give_message
	#after_save    :give_message
	#before_destroy :destroy_author
	def merge_book_names
		self.name= self.name + "By" + self.author
	end	
	def give_message 
		puts "Book has been deleted.........."
	end	
	def give_message
		puts "Book has been added..."	
	end
	def destroy_author
		puts "Author has been deleted........"
	end
	def normalize_name
      self.name = name.downcase.titleize
    end
end
