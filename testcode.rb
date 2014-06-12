require_relative 'cookbook'


mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean Burrito", ["tortilla", "beans"], ["heat beans", "place beans in tortilla", "sprinkle cheese on top", "roll up"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.add_recipe(burrito)

mex_cuisine.recipe_titles

mex_cuisine.recipe_ingredients

burrito.print_recipe

horchata = Recipe.new("Horchata", ["rice milk", "rose water", "cinnamon sticks", "sugar"], ["heat all ingredients on low", "put in jar", "chill in fridge overnight", "serve over ice"])
mex_cuisine.add_recipe(horchata)

mex_cuisine.print_cookbook