class ApplicationController < ActionController::Base
  around_action :set_current_user_globally

  private

  def set_current_user_globally
    Thread.current[:current_user] = current_user
    yield
  ensure
    Thread.current[:current_user] = nil
  end

  # Stubbed current user
  def current_user
    User.first!
  end
end
