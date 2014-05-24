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
  # redirect '/'
  erb :index
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
  erb :login
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/surveys' do
  @surveys = Survey.all
  @users = User.all
  erb :surveys
end

get '/survey/:survey_id' do
  @survey = Survey.where(id: params[:survey_id])
  erb :survey
end

get '/surveys/create' do

  erb :'create_survey/create'
end

post '/survey/new' do
  title = params[:survey][:title]
  session[:title] = title
  survey = Survey.create(title: title, user_id: session[:user_id])
  session[:survey_id] = survey.id
  redirect '/surveys/create'
end

post '/survey/new_question' do
  survey_id = session[:survey_id]
  question_title = params[:question][:question]
  question = Question.create(question: question_title, survey_id: survey_id)
  session[:question_id] = question.id
  redirect '/surveys/create'
end

post '/finished' do
  session.delete(:title)
  redirect '/'
end

post '/choices' do
  puts params[:choices]
  params[:choices].each do |key, val|
    Choice.create(choice: val, question_id: session[:question_id])
  end
end
