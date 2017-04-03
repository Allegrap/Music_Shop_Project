require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/album')
require_relative('../models/artist')

get '/artists' do
  @artists = Artist.all
  erb(:"artists/index")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end