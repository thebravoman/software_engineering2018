# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  Document.create([
    { name: 'Essay', desc: 'essay for my literature classes', content: 'From an early age I was fascinated with fossils...'}, 
    { name: 'Review', desc: 'Review on Lord of the Rings', content: 'Frodo Baggins plunges into a perilous trek to take the mystical One...'}])
  User.create(name: 'Martin', pass: "123456")
