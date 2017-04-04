require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => 'James Blake',
  'image_url' => 'http://cdn.pitchfork.com/albums/19037/b7213934.jpg'
  })

artist2 = Artist.new({
  'name' => 'Beyoncé',
  'image_url' => 'http://img2-ak.lst.fm/i/u/22e7520138b17c397a9b59ee5a152e30.png'
  })

artist3 = Artist.new({
  'name' => 'Santana',
  'image_url' => 'http://cps-static.rovicorp.com/3/JPG_400/MI0003/678/MI0003678015.jpg?partner=allrovi.com'
  })

artist4 = Artist.new({
  'name' => 'Stormzy',
  'image_url' => 'https://bookies.com/wp-content/uploads/2015/12/Stormzy.jpg'
  })

artist5 = Artist.new({
  'name' => 'Elbow',
  'image_url' => 'https://static.gigwise.com/artists/Elbow2011Press600.jpg'
  })

artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()

album1 = Album.new({
  'title' => 'The Colour in Anything',
  'artist_id' => artist1.id,
  'genre' => 'Contemporary R&B',
  'image_url' => 'http://cdn4.pitchfork.com/albums/23243/310698eb.jpg',
  'quantity' => 43,
  'sell_price' => 12,
  'buy_price' => 5
  })

album2 = Album.new({
  'title' => 'Lemonade',
  'artist_id' => artist2.id,
  'genre' => 'Pop',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/5/53/Beyonce_-_Lemonade_%28Official_Album_Cover%29.png',
  'quantity' => 23,
  'sell_price' => 17,
  'buy_price' => 8
  })

album3 = Album.new({
  'title' => 'Supernatural',
  'artist_id' => artist3.id,
  'genre' => 'Latin Rock',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/7/7f/Santana_-_Supernatural_-_CD_album_cover.jpg',
  'quantity' => 13,
  'sell_price' => 9,
  'buy_price' => 4
  })

album4 = Album.new({
  'title' => 'Gang Signs & Prayer',
  'artist_id' => artist4.id,
  'genre' => 'Grime',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/9/9b/Gang_Signs_%26_Prayer_cover.jpg',
  'quantity' => 53,
  'sell_price' => 19,
  'buy_price' => 14
  })

album5 = Album.new({
  'title' => 'Little Fictions',
  'artist_id' => artist5.id,
  'genre' => 'Alternative Rock',
  'image_url' => 'http://dhgkpqsiufwl2.cloudfront.net/media/ArticleSharedImage/imageFull/.f3ipfPjV/ArticleSharedImage-68091.jpg',
  'quantity' => 35,
  'sell_price' => 12,
  'buy_price' => 6
  })

album6 = Album.new({
  'title' => '4',
  'artist_id' => artist2.id,
  'genre' => 'Pop',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/c/ca/Beyonc%C3%A9_-_4.png',
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