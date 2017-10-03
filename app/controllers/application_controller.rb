class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
  	render text: 'hello world'
  end
  include SessionsHelper

private

  def logged_in_user
  unless logged_in?
    flash[:danger]="please firstly log in"
    redirect_to login_path
    end
  end
end
