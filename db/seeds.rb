# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'test', password: '123')
User.create(username: 'apple', password: '232')
User.create(username: 'john', password: '777')

Recipe.create(name: 'applesauce', ingredients: ["apples", "sugar", "water"], source: 'some person', image: 'tcrvygbkuhnjkml', user_id: 2)
Recipe.create(name: 'papaya smoothie', ingredients: ["papayas", "milk", "sugar"], source: 'maybe martha stewart', image: 'cfvgbhjk', user_id: 3)
Recipe.create(name: "rice", ingredients: ["rice", "water"], source: 'maybe snoop', image: 'ctfvygbhunj', user_id: 2)

# List.create(user_id: 2, recipe_id: 1)
# List.create(user_id: 3, recipe_id: 3)
# List.create(user_id: 2, recipe_id: 2)