require_relative('../db/sql_runner')

class Artist

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map {|artist| Artist.new(artist)}
  end


end