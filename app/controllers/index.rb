get '/' do

  erb :index
end

get '/signup' do

  erb :signup
end

post '/signup' do
  p param
  User.create(params[:create])
end

get '/login' do

  erb :login
end


