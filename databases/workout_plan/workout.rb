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
		reps INT
		)
SQL

db.execute(create_table_cmd)

# add test exercise
def create_workout(db, reps, exercise)
db.execute("INSERT INTO workout (reps) VALUES (?)", [reps])
end

exercises = [ "Crunches", "Push Ups", "Lunges", "Squats", "Squat Jumps", "Mountain Climber", "Burpees", "Lunge Jumps", "Calf Raisers", "Tricep Dips", "Arm Cirlces", "Bicycle abs", "Side Lunge", "Leg Lifts", "Jumping Jacks"]

# add many different types of exercises

# create daily workout plan for the year
365.times do 
	create_workout(db, Faker::Number.between(1,100), exercises.sample)
end

workout = db.execute("SELECT * FROM workout")
workout.each do |workout|
	puts "Today's workout: Do #{workout['reps']} #{exercises.sample} and #{workout ['reps']} #{exercises.sample}"
end


