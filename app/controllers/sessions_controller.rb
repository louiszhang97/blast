class SessionsController < ApplicationController
  def new
  end
  def create
  	key = Key.find_by(key: params[:session][:key])
  	if key != nil 
  	  #login
  	  log_in key
  	  redirect_to static_pages_home_url
  	else
  	  flash.now[:danger] = 'Invalid key!' # Not quite right!
  	  render 'new'
  	end 

  end
  def destroy
  	log_out
  end
end
