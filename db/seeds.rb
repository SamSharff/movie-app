# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

movie = Movie.new({title: "Toy Story", year: 1995, plot: "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room."})
movie.save

#I cannot seed the data. I keep getting this error: ~/actualize/movie-app % rails db:seed
# You have 1 pending migration:
# 20220311150150 CreateMovies
# Run `bin/rails db:migrate` to update your database then try again.
# ~/actualize/movie-app % bin/rails db:migrate
# == 20220311150150 CreateMovies: migrating =====================================
# -- create_table(:movies)
# rails aborted!
# StandardError: An error has occurred, this and all later migrations canceled:

# PG::DuplicateTable: ERROR:  relation "movies" already exists
# /Users/samanthasharff/Actualize/movie-app/db/migrate/20220311150150_create_movies.rb:3:in `change'

# Caused by:
# ActiveRecord::StatementInvalid: PG::DuplicateTable: ERROR:  relation "movies" already exists
# /Users/samanthasharff/Actualize/movie-app/db/migrate/20220311150150_create_movies.rb:3:in `change'

# Caused by:
# PG::DuplicateTable: ERROR:  relation "movies" already exists
# /Users/samanthasharff/Actualize/movie-app/db/migrate/20220311150150_create_movies.rb:3:in `change'
# Tasks: TOP => db:migrate
# (See full trace by running task with --trace)
# ~/actualize/movie-app % db 
