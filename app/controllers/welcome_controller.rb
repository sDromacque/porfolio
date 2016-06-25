class WelcomeController < ApplicationController
  def index
    @posts = Post.order('Created_at').limit(3)
    @projects = Project.order('Created_at').limit(3)
  end
end
