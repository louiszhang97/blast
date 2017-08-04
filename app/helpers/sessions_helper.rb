module SessionsHelper
  @current_key = nil 
	def log_in(key)
		session[:key_id] = key.id
    session[:expire] = Time.now + 5.minutes 
    @current_key = key 
	end 
	def log_out
		session.delete(:key_id)
    session.delete(:expire)
    @current_key = nil
  end 

	def current_key
    @current_key ||= Key.find_by(id: session[:key_id])
  end
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_key.nil?
  end

  def check_expire
    if session.has_key?(:expire)
      if Time.now > session[:expire]
        log_out
      end
    end
  end 
end 

