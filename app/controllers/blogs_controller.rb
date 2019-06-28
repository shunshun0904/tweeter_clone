class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  # 追記する
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to blogs_path, notice: "ツイートを投稿しました！"
    else
      # 入力フォームを再描画します。
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ツイートを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
  end

  private

  def blog_params
    params.require(:blog).permit(:content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
