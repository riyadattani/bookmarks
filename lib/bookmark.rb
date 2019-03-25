require 'pg'

class Bookmark

  # @list = []
  # conn = PG.connect( dbname: 'bookmark_manager')
  # conn.exec( "SELECT * FROM bookmarks" ) do |result|
  #   result.each do |row|
  #     @list << row.values_at('url')[0]
  #   end
  #   @list
  # end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # @list
  end
end
