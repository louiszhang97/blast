class StaticPagesController < ApplicationController
	include SessionsHelper
	before_action :authenticate, :check_expire
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
