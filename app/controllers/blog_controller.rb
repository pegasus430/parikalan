class BlogController < ApplicationController

  def index
  end

  def blog_grid
  	@blog_category = BlogCategory.find_by_url_slug(params[:slug])
  end

  def show
  	@blog = Blog.find_by_url_slug(params[:slug])
  	@seo_object = @blog
  end
end
