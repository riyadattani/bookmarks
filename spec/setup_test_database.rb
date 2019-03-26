# Tests should always run against an empty database.
#We need to 'drop' the database between each run of the script. Let's use PostgreSQL's "TRUNCATE" command to do that:

require 'pg'

def setup_test_database

  p 'Setting up test database...'


  connection = PG.connect(dbname: 'bookmark_manager_test')

#clear the bookmarks table
#(DROP TABLE would remove the full table)
  connection.exec("TRUNCATE bookmarks;")
end
