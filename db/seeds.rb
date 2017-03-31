require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

artist1 = Artist.new({'name' => 'James Blake'})

artist2 = Artist.new({'name' => 'Beyonce'})

artist3 = Artist.new({'name' => 'Santana'})

artist1.save()
artist2.save()
artist3.save()




binding.pry
nil