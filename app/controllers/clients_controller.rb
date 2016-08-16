class ClientsController < ApplicationController

	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
		@client = Client.new
    end

    def create
		@client = Client.new(permit_params)
 
  		if @client.save
			redirect_to @client
		else
			render(:index)
		end
    end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client= Client.find(params[:id])
    	if @client.update_attributes(permit_params)
    		/flash[:notice] = "You have successfully logged out."/
    		redirect_to(clients_path)
    	else
    		render(:edit)

    	end
	end

	private
	def permit_params
		params.require(:client).permit(:name, :email, :description)
	end

end