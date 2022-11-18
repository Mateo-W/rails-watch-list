class ListsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)

    redirect_to list_path(@list)
  end
end

private
def list_params
  params.request(:list).permit(:name)
end
