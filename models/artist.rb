require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :name, :image_url

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @image_url = options['image_url']
  end

  def save()
    sql = "INSERT INTO artists (name, image_url) VALUES ('#{@name}', '#{@image_url}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    results = SqlRunner.run(sql)
    return results.map { |album| Album.new(album) }
  end

  def update()
    sql = "UPDATE artists SET
    (name) = ('#{@name}'),
    (image_url) = ('#{@image_url}')
    WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def self.num_of_diff_artists()
    return Artist.all.length
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map {|artist| Artist.new(artist)}
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id}"
    artist = SqlRunner.run(sql)
    result = Artist.new(artist.first)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end