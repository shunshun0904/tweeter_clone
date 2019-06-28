class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  # 追記する
  def create
    Blog.create(params[:blog])
    redirect_to new_blog_path
  end

  private

  def blog_params
    params.require(:blog).permit(:content)
  end

end
