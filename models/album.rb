class Album

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    @quantity = options['quantity'].to_i
    @sell_price = options['sell_price'].to_i
    @buy_price = options['buy_price'].to_i
  end


end