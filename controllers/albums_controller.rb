require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/album')
require_relative('../models/artist')

get '/albums' do
  @albums = Album.all
  erb(:"albums/index")
end

get '/albums/:artist_id/new' do
  @artist = Artist.find(params[:artist_id])
  erb(:"albums/new")
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:"albums/created")
end

get '/albums/:id' do
  @albums = Album.find(params[:id])
  erb(:"albums/show")
end