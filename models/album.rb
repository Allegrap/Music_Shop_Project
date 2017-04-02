require_relative('../db/sql_runner')

class Album

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    @quantity = options['quantity'].to_i
    @sell_price = options['sell_price'].to_i
    @buy_price = options['buy_price'].to_i
  end

  def save()
    sql = "INSERT INTO albums (
    title,
    artist_id,
    quantity,
    sell_price,
    buy_price
    ) VALUES (
    '#{@title}',
    #{@artist_id},
    #{@quantity},
    #{@sell_price},
    #{@buy_price}
    ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums"
    results = SqlRunner.run(sql)
    return results.map {|album| Album.new(album)}
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

end