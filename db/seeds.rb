# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#boards
boards = Board.create([{name: 'Cetera'}, {name: 'ShindigIt'}])

#Cetera lists
  List.create(name: 'Reviews', board: boards.first)
  List.create(name: 'Messaging', board: boards.first)
  List.create(name: 'Feature Ideas', board: boards.first)

#ShindigIt lists
  List.create(name: 'General Contributions', board: boards.last)
  List.create(name: 'Feature Ideas', board: boards.last )