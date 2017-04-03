require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/album')
require_relative('../models/artist')

get '/artists' do
  @artists = Artist.all
  erb(:"artists/index")
end

get '/artists/new' do
  erb(:"artists/new")
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:"artists/created")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  @albums = @artist.albums
  erb(:"artists/show")
end