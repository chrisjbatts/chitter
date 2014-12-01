require 'data_mapper'
require 'sinatra/base'
require './lib/bleat.rb'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

DataMapper.finalize

DataMapper.auto_upgrade!

class Chitter < Sinatra::Base

  get '/' do
    @bleats = Bleat.all
    erb :index
  end

  run! if app_file == $0
end
