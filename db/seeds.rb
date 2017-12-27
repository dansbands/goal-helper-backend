# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: "Dan" }, { name: "Stormy" }])

goals = Goal.create([{ title: "Learn CSS", notes: "Check out Bootstrap", user_id: 1 }, { title: "Learn JavaScript", notes: "Look at WesBos for Vanilla JS Tutorials", user_id: 1 }, { title: "Learn ReactJS", notes: "Check out Bootstrap", user_id: 1 }, { title: "Get a Programming Job", notes: "Check out Bootstrap", user_id: 1 }, {title: "Dig up a new bone", notes: "I think I saw one under the couch...", user_id: 2 }])

links = Link.create([{ title: "Medium: CSS Grid", url:"https://medium.freecodecamp.org/learn-css-grid-in-5-minutes-f582e87b1228", goal_id: 1 }, { title: "W3Schools: CSS", url:"https://www.w3schools.com/css/", goal_id: 1 }, { title: "Treehouse: Learn CSS", url:"https://teamtreehouse.com/learn/css?utm_source=google&cid=1352&utm_source=google&campaign=792007886&utm_term=&cid=1352&gclid=Cj0KCQiA9_LRBRDZARIsAAcLXjcIduHljau_Fht3N4frUqh6rVXMG40hh_g1P1YtRDoOFgCrZJqb50UaAkA7EALw_wcB&gclsrc=aw.ds", goal_id: 1 }, { title: "Codecademy: Learn CSS", url:"https://www.codecademy.com/learn/learn-css", goal_id: 1 }, { title: "PetSmart: Bones and Rawhide", url:"https://www.petsmart.com/dog/treats/bones-and-rawhide/", goal_id: 3 }, { title: "W3Schools: JS", url:"https://www.w3schools.com/js/default.asp", goal_id: 2 }])
