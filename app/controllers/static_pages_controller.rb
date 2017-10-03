class StaticPagesController < ApplicationController
  def help
  end

  def home
    @micropost = current_user.microposts.build if logged_in?
  end
  def about
  end

   def contact
  end

end
