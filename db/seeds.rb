require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'James Blake'})

artist2 = Artist.new({'name' => 'Beyonce'})

artist3 = Artist.new({'name' => 'Santana'})

artist1.save()
artist2.save()
artist3.save()

album1 = Album.new({
  'title' => 'the colour in anything',
  'artist_id' => artist1.id,
  'quantity' => 43,
  'sell_price' => 12,
  'buy_price' => 5
  })

album2 = Album.new({
  'title' => 'lemonade',
  'artist_id' => artist2.id,
  'quantity' => 23,
  'sell_price' => 17,
  'buy_price' => 8
  })

album3 = Album.new({
  'title' => 'supernatural',
  'artist_id' => artist3.id,
  'quantity' => 13,
  'sell_price' => 9,
  'buy_price' => 4
  })

album1.save()
album2.save()
album3.save()


binding.pry
nil