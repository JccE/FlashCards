get "/sessions/new" do

  erb :"/sessions/new"
end

post "/sessions" do
  @user = User.find_by(username: params[:username])

  if !@user
    @errors = ["Oops, you're not registered.  Let's take care of that."]
    return erb :"/users/new"
  end

  if @user.authenticate(params[:password])
    session[:user_id] = @user.id

    redirect "/users/#{@user.id}"
  else
    @errors = ["Oops, something went awry. Try again!"]
    redirect "/sessions/new"
  end

end

delete "/sessions" do
  session.delete(:user_id)

  redirect "/"
end

get "/not_authorized" do

  erb :"/not_authorized"
end
