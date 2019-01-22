# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  Document.create([
    { name: 'Essay', desc: 'essay for my literature classes', content: 'From an early age I was fascinated with fossils...'}, 
    { name: 'Review', desc: 'Review on Lord of the Rings', content: 'Frodo Baggins plunges into a perilous trek to take the mystical One...'},
    { name: "Untitled", desc: "Simple test file", content: "Lorem ipsum dolor sit amet, consectetur adipiscing..."},
    { name: "Untitled1", desc: "Another sample test file", content: "dolor sit amet, consectetur Lorem ipsum adipiscing..."}])
  User.create([{name: 'Martin', pass: "123456", email: "xxm0703@abv.bg", confirmed: true}, 
    {name: "Tosho", pass: "portokal", email: "to6eto@abv.bg", confirmed: true}])
