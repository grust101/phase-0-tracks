# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# create new database for resources
db1 = SQLite3::Database.new("resources.db")
db1.results_as_hash = true

create_table = "CREATE TABLE IF NOT EXISTS resources ( 
	id INTEGER PRIMARY KEY, 
	resource VARCHAR(255)
	)"

db1.execute(create_table)


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  p @resources = db1.execute("SELECT * FROM resources")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create a route for new_resource page
get '/resources/new' do
	erb :new_resource
end

post '/resources' do
  db1.execute("INSERT INTO resources (resource) VALUES (?)", [params['source']])
  redirect '/'
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources


