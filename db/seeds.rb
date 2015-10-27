# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
	{id: 0, name: "Fiction"}, 
	{id: 1, name: "Non-Fiction"}, 
	{id: 2, name: "Poetry"}, 
	{id: 3, name: "Academic"}, 
	])

fiction = Genre.create([
	{id: 0, category_id: 0, name: "Fantasy/Science Fiction"}, 
	{id: 1, category_id: 0, name: "Horror/Suspense"}, 
	{id: 2, category_id: 0, name: "Romance/Erotica"}, 
	{id: 3, category_id: 0, name: "Thriller/Suspense"}, 
	{id: 4, category_id: 0, name: "Crime/Espionage"}, 
	{id: 5, category_id: 0, name: "Young Adult"}, 
	{id: 6, category_id: 0, name: "Fanfiction"}, 
	])

nonfiction = Genre.create([
	{id: 7, category_id: 1, name: "Autobiography/Biography/Memoirs"}, 
	{id: 8, category_id: 1, name: "Historical/Political"}, 
	{id: 9, category_id: 1, name: "Scientific"}, 
	])

poetry = Genre.create([
	{id: 10, category_id: 2, name: "Written Poetry"}, 
	{id: 11, category_id: 2, name: "Spoken Word"}, 
	{id: 12, category_id: 2, name: "Short Poetry"}, 
	{id: 13, category_id: 2, name: "Prose Poetry"}, 
	{id: 14, category_id: 2, name: "Epic Poetry/Ballads"}, 
	])

academic = Genre.create([
	{id: 15, category_id: 2, name: "Economics/Finance/International Relations"}, 
	{id: 16, category_id: 2, name: "Science/Engineering/Tech"}, 
	{id: 17, category_id: 2, name: "Sociology/Anthropology/Psychology"}, 
	{id: 18, category_id: 2, name: "English Literature"}, 
	{id: 19, category_id: 2, name: "History/Philosophy"}, 
	])

states = State.create([
	{id: 0, name: "Open"},
	{id: 1, name: "Editing"},
	{id: 2, name: "Completed"},
	{id: 3, name: "Cancelled"},
	])