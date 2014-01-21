# students.rb

# Add a student
# Delete a student
# Show a list of all students
# Show a list of students with a particular first_name
# Show a list of students with any particular attribute

require 'sqlite3'

$db = SQLite3::Database.new "students.db"

class Student
	
	def initialize(params)
		id = params[:id]
		first_name = params[:first_name] 
		last_name = params[:last_name]
		email = params[:email]
		location = params[:location]
		birthdate = params[:birthdate]
		created_at = Time.now 
		updated_at = Time.now
	end

	def add
	end

	def delete
	end

	def list
	end


	


end