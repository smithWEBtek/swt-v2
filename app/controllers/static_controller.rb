class StaticController < ApplicationController
  def home
  end

  def about
    render 'static/about'
  end

  def ask
    render 'static/ask'
  end

  def blog
    render 'static/blog'
  end

  def future
    render 'static/future'
  end

  def wiki
    render 'static/wiki'
  end

  def projects
    render 'static/projects'
  end
end