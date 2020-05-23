class User < ApplicationRecord
	attr_accessor :name, :age

	def initialize(name:, age:)
		self.name = name
		self.age = age
	end

	def disp_name
		case self.age
			when 0..1 then
				"#{self.name}ちゃん"
			when 2..15 then
				"#{self.name}君"
			else
				"#{self.name}さん"
		end
	end
end
