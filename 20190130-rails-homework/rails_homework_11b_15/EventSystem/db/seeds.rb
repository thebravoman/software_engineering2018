# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  people = Person.create([{ name: 'Martin' }, { name: 'Gosho' }, {name: "Tosho"}])
  Event.create([{name: 'Monopoly', location: "At home", time: 10.days.from_now, description: "We're going to play all types of board games, but mainly Monopoly"},
  {name: "Come and Concept", location: "At the park" , description: "Again we're playing board games but this time the main focus is on 'Concept'.", time: 1.month.from_now}])
