get "/login" do

  erb :"/login"
end

post "/login" do
  @user = User.find_by(username: params[:username])

  if @user.password == params[:password]
    session[:user_id] = @user.id

    redirect "/users"
  else
    @errors = ["Oops, you didn't enter the right password in. Try again"]
    redirect "/login"
  end

end

get "/register" do

  erb :"/register"
end


post "/register" do
  @user = User.new(params[:user])

  if @user.save
    redirect "/users"
  else
    # run other code
  end

end
