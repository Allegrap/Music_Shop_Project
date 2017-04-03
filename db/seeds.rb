require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'James Blake'})

artist2 = Artist.new({'name' => 'Beyoncé'})

artist3 = Artist.new({'name' => 'Santana'})

artist4 = Artist.new({'name' => 'Stormzy'})

artist5 = Artist.new({'name' => 'Elbow'})

artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()

album1 = Album.new({
  'title' => 'The Colour in Anything',
  'artist_id' => artist1.id,
  'quantity' => 43,
  'sell_price' => 12,
  'buy_price' => 5
  })

album2 = Album.new({
  'title' => 'Lemonade',
  'artist_id' => artist2.id,
  'quantity' => 23,
  'sell_price' => 17,
  'buy_price' => 8
  })

album3 = Album.new({
  'title' => 'Supernatural',
  'artist_id' => artist3.id,
  'quantity' => 13,
  'sell_price' => 9,
  'buy_price' => 4
  })

album4 = Album.new({
  'title' => 'Gang Signs & Prayer',
  'artist_id' => artist4.id,
  'quantity' => 53,
  'sell_price' => 19,
  'buy_price' => 14
  })

album5 = Album.new({
  'title' => 'Little Fictions',
  'artist_id' => artist5.id,
  'quantity' => 35,
  'sell_price' => 12,
  'buy_price' => 6
  })

album6 = Album.new({
  'title' => '4',
  'artist_id' => artist2.id,
  'quantity' => 15,
  'sell_price' => 11,
  'buy_price' => 6
  })

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()


binding.pry
nil