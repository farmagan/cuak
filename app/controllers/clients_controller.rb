class ClientsController < ApplicationController

  def show
    @params = params
    @client = Client.find(params[:id])
  end

end

