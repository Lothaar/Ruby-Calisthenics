class Dessert
	attr_accessor :name, :calories
  	def initialize(name, calories)
    		@name = name
    		@calories = calories
  	end
  	def healthy?
    		if calories < 200
			return true
		else
			return false
		end
  	end
  	def delicious?
    		return true
  	end
end

class JellyBean < Dessert
	attr_accessor :flavor
  	def initialize(flavor)
    		@flavor = flavor
		@name = flavor + " jelly bean"
		@calories = 5
  	end
	def delicious?
		flavor != "licorice"
	end
end
