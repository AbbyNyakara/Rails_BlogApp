# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
first_user = User.create(name: 'Tom', email:'tom@gmail.com', password:'tom123', photo: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create(name: 'Lilly',email:'lilly@gmail.com', password:'lilly123', photo: 'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', bio: 'Teacher from Poland.', posts_counter: 0)
third_user = User.create(name: 'Tim', email:'tim@gmail.com', password:'tim123', photo: 'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', bio: 'Teacher from Canada.', posts_counter: 0)
kimutai = User.create(name: 'Kim', email:'kiprotichkimutai01@gmail.com', password:'kim123', photo: 'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', bio: 'Teacher from Canada.', posts_counter: 0)

# Posts
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
second_post = Post.create(author: first_user, title: 'Hello again', text: 'This is my second post', comments_counter: 0, likes_counter: 0)
third_post = Post.create(author: first_user, title: 'Hello again and again', text: 'This is my third post', comments_counter: 0, likes_counter: 0)
fourth_post = Post.create(author: first_user, title: 'Hello', text: 'This is my fourth post', comments_counter: 0, likes_counter: 0)

fifth_post = Post.create(author: second_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
sixth_post = Post.create(author: second_user, title: 'Hello again', text: 'This is my second post', comments_counter: 0, likes_counter: 0)
seventh_post = Post.create(author: second_user, title: 'Hello again and again', text: 'This is my third post', comments_counter: 0, likes_counter: 0)