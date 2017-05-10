class HomeController < ApplicationController
  
  def mainpage
    
  end

  def index

  end
  
  def write
    
    one_post = Post.new
    one_post.title = params["title"]
    one_post.contents = params["contents"]
    one_post.save
    redirect_to '/list'
  end
  
  def list
    @posts = Post.all
  end
  
  def delete
     posts = Post.find(params["id"])
     posts.destroy
     redirect_to '/list'
  end
  
  def edit
    @posts = Post.find(params["id"])
  end
  
  def update
    posts = Post.find(params["id"])
    posts.title = params["title"]
    posts.contents = params["contents"]
    posts.save
      redirect_to '/list'
  end
  
  
  
end
