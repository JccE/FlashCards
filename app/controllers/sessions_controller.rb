get "/login" do
  
  erb :"/login"
end

post "/login" do
  
  if params[:password] == "password"
    @user = User.find_by(email: params[:email])
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
