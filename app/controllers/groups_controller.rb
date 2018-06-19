class GroupsController < ApplicationController

  def index
  	@groups = Group.all
  end

  def show
  end

  def new
  	@group = Group.new
  end

  def create
  	@group = Group.new(group_params)
  	@group.user = current_user
  	if @group.save
  	  redirect_to group_path(@group)
  	else
  	  render :new
  	end
  end

  private

  def group_params
    params.require(:item).permit(:name, :description, :city, :country)
  end


end