get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end

get '/signup' do

  erb :signup
end

post '/signup' do
  @user = User.new(params[:create])
  @user.password = params[:create][:password_hash]
  @user.save
  session[:user_id] = @user.id
  redirect '/'
end

get '/login' do

  erb :login
end

post '/login' do
  @user = User.find_by_username(params[:login][:username])
  if @user.password == params[:login][:password_hash]
    session[:user_id] = @user.id
  else
    session[:message] = "Login did not work"
  end
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/surveys' do
  @surveys = Survey.all
  erb :surveys
end


