
class Cookbook
	def initialize(title)
		@title = title
		@recipes = []
	end

	attr_accessor :title
	attr_reader :recipes

	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to #{self.title}: #{recipe.title}"
	end

	def recipe_titles
		puts "Recipes in #{self.title}:"
		recipes.each do |r|
			puts r.title
		end
	end

	def recipe_ingredients
		puts "These are the ingredients for all recipes:"
		recipes.each { |x|; puts x.ingredients }
	end

	def print_cookbook
		recipes.each do |r|
			puts ""
			r.print_recipe
			puts ""
		end
	end

end


class Recipe
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

	def print_recipe
		puts "#{self.title}:"

		puts ""

		puts ingredients

		puts ""

		steps.each do |s|

			puts "#{self.steps.index(s)+1}. #{s.capitalize}."

		end
	end

end

