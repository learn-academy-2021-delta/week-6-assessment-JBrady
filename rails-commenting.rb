# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1)
# Creating the class BlogPostsController which inherits from ApplicationController

# CORRECT ANSWER - defining a class called BlogPostsController which likely came from a generate command, inheriting from the application controller
class BlogPostsController < ApplicationController
  def index
    # ---2)
    # This is declaring an instance variable @posts.

    # CORRECT ANSWER - Defining an instance variable called @posts thats holding an Active Record query returning all instances of BlogPost
    @posts = BlogPost.all
  end

  def show
    # ---3)
    # This is declaring another instance variable @post. I think its for the search functionality of the blog somehow.

    # CORRECT ANSWER - defining an instance variable thats holding an Active Record query finding one item from the BlogPost db by getting an id from the params in the URL
    @post = BlogPost.find(params[:id])
  end

  # ---4)
  # Declaring another instance of the variable @post.

  # CORRECT ANSWER - defining a method called new that will return a form
  def new
    @post = Post.new
  end

  def create
    # ---5)
    # Yet another declaration of the variable @post for some reason. Not sure why this is being declared 3 times already. Looks like its a conditional that redirects to a specific route depending on if the instance variable is valid.

    # CORRECT ANSWER - defining an instance variable to create a new instance of BlogPost calling the blog_post_params strong method 
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  # ---6)
  # Again with the declaration of @post. Not sure I'm understanding this after all. Looks like its focusing on the edit functionality of the blog post.

  # CORRECT ANSWER - defining a method that calls a restful route that displays a form for updating info
  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7)
    # Conditional thats checking it the instance variable is valid and redirecting to a specific route.

    # CORRECT ANSWER - instance variable of one item in the db modifying a record and being passed blog_post_params which is the strong param method call
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

      # CORRECT ANSWER - routing to the show page
      redirect_to blog_post_path(@post)
    end
  end

  # ---9)
  # Private is a security keyword that prevents the code from being referenced outside of the class

  # CORRECT ANSWER - everything below this line cannot be accessed outside the scope of this class
  private
  def blog_post_params
    # ---10)
    # Requiring specific parameters, and showing what parameters its allowing

    # CORRECT ANSWER - User is only allowed to update the title and content column in the blog_post table
    params.require(:blog_post).permit(:title, :content)
  end
end
