require 'sqlite3'

# If you want to overwrite your database you will need
# to delete it before running this file
$db = SQLite3::Database.new "students.db"

module StudentDB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE students (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          email VARCHAR(64) NOT NULL,
          location VARCHAR(64) NOT NULL,
          birthdate DATETIME NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
        INSERT INTO students
          (first_name, last_name, email, location, birthdate, created_at, updated_at)
        VALUES
          ('Brick','Thornton', 'brick.thor@dbc.com', 'Chicago', DATETIME'1995-04-09', DATETIME('now'), DATETIME('now'));

       # -- Create two more students who are at least as cool as this one.
        INSERT INTO students
          (first_name, last_name, email, location, birthdate, created_at, updated_at)
        VALUES
          ('Johnny','Cash', 'john@cash.com', 'country', DATETIME('1945-02-15'), DATETIME('now'), DATETIME('now'));

        INSERT INTO students
          (first_name, last_name, email, location, birthdate, created_at, updated_at)
        VALUES
          ('Bill', 'Gates', 'bill@microsoft.com', 'silicon valley', DATETIME('1955-10-28'), DATETIME('now'), DATETIME('now'));
      SQL
    )
  end
end