class VendingMachine
	attr_reader :inventory
	def initialize
		@inventory = Array.new
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
		@inventory.group_by do |snack|
			snack.name[0]
		end
	end
end