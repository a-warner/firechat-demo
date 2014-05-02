class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def firebase_auth_token
    firebase_token_generator.create_token({}, {admin: true})
  end
  helper_method :firebase_auth_token

  def firebase_token_generator
    @firebase_token_generator ||= Firebase::FirebaseTokenGenerator.new(ENV.fetch('FIREBASE_SECRET'))
  end
end
