class User
	attr_accessor :name, :email

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:mail]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end