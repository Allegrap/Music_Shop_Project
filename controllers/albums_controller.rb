require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/album')
require_relative('../models/artist')

get '/albums' do
  @albums = Album.all
  erb(:"albums/index")
end

get '/albums/new' do
  erb(:"albums/new")
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:created)
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:"albums/show")
end