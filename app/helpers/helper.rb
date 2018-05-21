class Helpers

  def self.current_user(session)
    @user = User.find_by_id(session[:user_id])
  #  @user = User.find_by_id(session[:user_id]) unless session[:user_id].nil?
  end

  def self.logged_in?(session)
    !!self.current_user(session)
  end

end
