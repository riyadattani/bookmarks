require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/browse' do
    @list = Bookmark.all
    erb :bookmark_list
  end

  run! if app_file == $0
end
