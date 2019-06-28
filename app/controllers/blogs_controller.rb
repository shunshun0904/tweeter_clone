class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  # 追記する
  def create
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    redirect_to new_blog_path
  end

end
