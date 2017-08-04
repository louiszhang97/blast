class StaticPagesController < ApplicationController
	include SessionsHelper
	before_action :authenticate 
	def authenticate
		unless logged_in? 
	  	redirect_to(login_url)
	  end 
	end

  def home
  end

  def help
  end
end
