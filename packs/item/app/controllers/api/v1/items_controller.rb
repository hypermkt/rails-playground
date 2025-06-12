class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all

    render json: items
  end

  def create
    ItemCreatorWorker.perform_in(30.seconds, { name: params[:name] })

    render status: :created
  end
end
