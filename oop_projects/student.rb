require_relative 'crud'

class Student include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = create_hash_digest(password)
  end

  def to_s
    "Full name: #{@first_name + ' ' + @last_name}, Username: #{@username}, Email: #{@email}, Password: #{@password}"
  end

end

jason = Student.new("Jason", "Swann", "jpswann", "jpswann@example.com", "password1")
coya = Student.new("Coya", "Swann", "cmswann", "cmswann@example.com", "password2")

puts jason