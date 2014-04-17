class StaticPagesController < ApplicationController

  def home
    @hasPortfolio = User.joins(:portfolio).uniq.load
    @users = @hasPortfolio.where(admin: nil)
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end