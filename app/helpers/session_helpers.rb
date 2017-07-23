# There are three way to display helpers

# module SessionHelpers
#   # code here
# end

# helpers SessionHelpers

# helpers do
  
# end

# or just list them

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def logged_in?
  !!current_user
end