
class VendingMachine
	attr_reader :inventory
	def initialize
		@inventory = []
	end

	def add_snack(snack)
		@inventory << snack
	end
	def snacks_by_name
		@inventory.map do |snack|
			snack.name 
		end		
	end

	def how_many_snacks
		@inventory.group_by do |snack|
			snack.quantity
		end
	end

	def inventory_by_alphabet
	end
end