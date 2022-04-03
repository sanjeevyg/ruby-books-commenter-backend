# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Comment.destroy_all
Book.destroy_all

book1 = Book.create(title: "Fountain Head", genre: "Architecture")
book2 = Book.create(title: "Selfish Gene", genre: "Science")
book3 = Book.create(title: "Bhagwat Geeta", genre: "Religion")


comment1 = Comment.create(commenter: "Sanjeev", body: "This is awesome book!", book: book1)
comment2 = Comment.create(commenter: "Anju", body: "I like this book!", book: book2)
comment3 = Comment.create(commenter: "Anil", body: "This book changed my life!", book: book3)