class Admin::NewsController < Admin::AdminController
  def index
    @news = News.all
  end
end
