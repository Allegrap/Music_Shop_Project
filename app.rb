require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/albums_controller')
require_relative('controllers/artists_controller')

get '/' do
  @number_of_albums = Album.num_of_diff_albums()
  @all_stock = Album.total_stock()
  @number_of_artists = Artist.num_of_diff_artists()
  erb(:index)
end
