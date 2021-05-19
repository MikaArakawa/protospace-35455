class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
  end
  
  def show
    @name = current_user.name
    @prototypes = current_user.prototypes

  end

  def destroy
  end

  def create
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
