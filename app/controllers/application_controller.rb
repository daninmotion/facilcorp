class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

<<<<<<< HEAD
 
=======
  def after_sign_in_path_for(resource)
  	store_location_for(resource)
  end
>>>>>>> 6e1e424ecc3c9c9a43b7609e723ef6737361603d
end
