get '/users' do

  erb :"/users/index"
end

get "/users/new" do
  authenticate!

  erb :"/users/new"
end

get "/users/:id" do
  authenticate!
  @user = User.find(params[:id])

  erb :"/users/show"
end

# start here
post "/users" do
  authenticate!

  @user = User.new(params[:user])

  if @user.save
    session[:user_id]
    redirect "/users"
  else
    # run other code
  end

end
