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

def create_client(db, name, quote, complete_date, service_requested)
  db.execute("INSERT INTO clients (name, quote, complete_date, service_requested) VALUES (?, ?, ?, ?)", [name, quote, complete_date, service_requested])
end


clients = db.execute("SELECT * FROM clients")
clients.each do |client|
  puts "#{client['name']} requested"
  puts "#{client['service_requested']}"
  puts "Quote: $#{client['quote']}"
  puts "Deadline: #{client['complete_date']}."
end

