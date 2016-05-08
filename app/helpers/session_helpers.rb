helpers do
  def current_user
    @current_user ||= Knitter.find_by(id: session[:knitter_id])
  end

  def logged_in?
    !current_user.nil?
  end

end