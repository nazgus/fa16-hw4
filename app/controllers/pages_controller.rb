class PagesController < ApplicationController
  def home
    @cats = Cat.all
    @users = User.all
    @todos = Todo.all
  end

  def new
  end

  def create
    Cat.create(
      :name => params[:name])
    User.create(
      :username => params[:username],
      :email => params[:email],
      :age => params[:age])
    Todo.create(
      :tasks => params[:tasks],
      :finished => params[:finished])
    redirect_to '/'
  end
end
