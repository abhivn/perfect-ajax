class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blogs = Blog.all
    @blog = Blog.create(blog_params)
  end

  def update
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
    @blog.update_attributes(blog_params)
  end

  def status
    @blog = Blog.find(params[:blog_id])
    if @blog.is_active == true
      @blog.is_active = false
      @blog.save
      @blogs = Blog.all
    else
    @blog.is_active = true
    @blog.save
    @blogs = Blog.all
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    @blogs = Blog.all
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
