# OPERATION EXERCISE PLAN :generate a workout plan for someone that combines different exercises and reps

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 Database

db = SQLite3::Database.new ("workout.db")
db.results_as_hash = true 

# create exercise table 

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS workout(
		id INTEGER PRIMARY KEY, 
		name VARCHAR(255),
		reps INT
		)
SQL

db.execute(create_table_cmd)

# add test exercise
def create_workout(db, name, reps)
db.execute("INSERT INTO workout (name, reps) VALUES (?, ?)", [name, reps])
end


# add many different types of exercises

# create daily workout plan for the year
365.times do 
	create_workout(db, Faker::Name.name, Faker::Number.number(2))
end

workout = db.execute("SELECT * FROM workout")
workout.each do |workout|
	puts "Do #{workout['reps']} of #{workout['name']}"
end


