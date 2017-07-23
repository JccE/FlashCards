get '/users' do

  erb :"/users/index"
end

get "/users/new" do

  erb :"/users/new"
end

get "/users/:id" do
  authenticate!
  @user = User.find(params[:id])

  erb :"/users/show"
end

# start here
post "/users" do

  if params[:user][:password] != params[:password_confirm]
    @errors = ["Oops! The passwords have to be the same"]
    return erb :"/users/new"
  else
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      erb :"/users/new"
    end
  end

end
