# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1)
# Creating the class BlogPostsController which inherits from ApplicationController
class BlogPostsController < ApplicationController
  def index
    # ---2)
    # This is declaring an instance variable @posts.
    @posts = BlogPost.all
  end

  def show
    # ---3)
    # This is declaring another instance variable @post. I think its for the search functionality of the blog somehow.
    @post = BlogPost.find(params[:id])
  end

  # ---4)
  # Declaring another instance of the variable @post.
  def new
    @post = Post.new
  end

  def create
    # ---5)
    # Yet another declaration of the variable @post for some reason. Not sure why this is being declared 3 times already. Looks like its a conditional that redirects to a specific route depending on if the instance variable is valid.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  # ---6)
  # Again with the declaration of @post. Not sure I'm understanding this after all. Looks like its focusing on the edit functionality of the blog post.
  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7)
    # Conditional thats checking it the instance variable is valid and redirecting to a specific route.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # ---8)
      # Redirecting to a specific route to the blog post.
      redirect_to blog_post_path(@post)
    end
  end

  # ---9)
  # Private is a security keyword that prevents the code from being referenced outside of the class
  private
  def blog_post_params
    # ---10)
    # Requiring specific parameters, and showing what parameters its allowing
    params.require(:blog_post).permit(:title, :content)
  end
end
