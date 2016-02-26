module CurrentUserAware

  def current_user
    Thread.current[:current_user] 
  end

end