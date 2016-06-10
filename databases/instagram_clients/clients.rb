require 'sqlite3'
require 'faker'


db = SQLite3::Database.new( "clients.db" )

create_table_cmd = <<-SQL
  CREATE TABLE clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    quote INT,
    complete_date VARCHAR(255),
    service_requested VARCHAR(255)
    )
SQL

db.execute(create_table_cmd)