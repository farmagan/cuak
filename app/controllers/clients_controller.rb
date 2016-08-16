class ClientsController < ApplicationController

	def index
		@clients = current_user.clients.all
	end

	def show
		@client = current_user.clients.find(params[:id])
	end

	def new
		@client = Client.new
    end

    def create
		@client = current_user.clients.build(client_params)
 
  		if @client.save
			redirect_to(clients_path)
		else
			render(:index)
		end
    end

    def destroy
    	if Client.find(params[:id]).destroy
    		redirect_to(clients_path)
    	else
    		confirm("Couldn't delete the client, try again!")
    	end

    end

	def edit
		@client = current_user.clients.find(params[:id])
	end

	def update
		@client= current_user.clients.find(params[:id])
    	if @client.update(client_params)
    		redirect_to(clients_path)
    	else
    		render(:edit)
    	end
	end

	private
	def client_params
		params.require(:client).permit(:name, :email, :description, :avatar)
	end

end