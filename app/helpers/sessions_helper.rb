module SessionsHelper
  @current_key = nil 
	def log_in(key)
		session[:key_id] = key.id
    @current_key = key 
	end 
	def log_out
		session.delete(:key_id)
    @current_key = nil
  end 

	def current_key
    @current_key ||= Key.find_by(id: session[:key_id])
  end
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_key.nil?
  end
end
