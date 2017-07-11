class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "What be up world?!"
  end
end
