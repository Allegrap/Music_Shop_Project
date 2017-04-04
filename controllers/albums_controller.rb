require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/album')
require_relative('../models/artist')

get '/albums' do
  @albums = Album.all
  @number_of_albums = Album.num_of_diff_albums()
  @all_stock = Album.total_stock()
  erb(:"albums/index")
end

get '/albums/:artist_id/new' do
  @artist = Artist.find(params[:artist_id])
  erb(:"albums/new")
end

post '/albums/:id' do
  @album = Album.new(params)
  @album.update()
  erb(:"albums/updated")
end

post '/albums/:id/delete' do
  @album = Album.find(params[:id])
  @album.delete()
  erb(:"albums/delete")
end

get '/albums/:id/update' do
  @artists = Artist.all()
  @album = Album.find(params['id'])
  erb(:"albums/update")
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:"albums/created")
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:"albums/show")
end