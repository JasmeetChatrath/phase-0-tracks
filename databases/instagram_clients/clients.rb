require 'sqlite3'
require 'faker'


db = SQLite3::Database.new( "clients.db" )
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    quote INT,
    complete_date VARCHAR(255),
    service_requested VARCHAR(255)
    )
SQL

db.execute(create_table_cmd)


puts "Who is your client?"
client_name = gets.chomp
puts "What service are you providing?"
service_name = gets.chomp
puts "How much will you charge for this service?"
service_quote = gets.chomp.to_i
puts "When do the need this service completed by?"
date_of_completion = gets.chomp

def create_client(db, name, quote, complete_date, service_requested)
  db.execute("INSERT INTO clients (name, quote, complete_date, service_requested) VALUES (?, ?, ?, ?)", [name, quote, complete_date, service_requested])
end

create_client(db, client_name, service_quote, date_of_completion, service_name)

clients = db.execute("SELECT * FROM clients")
clients.each do |client|
  puts "#{client['name']} requested"
  puts "#{client['service_requested']}"
  puts "Quote: $#{client['quote']}"
  puts "Deadline: #{client['complete_date']}."
end

