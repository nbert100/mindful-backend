class Api::V1::ClientsController < ApplicationController

    def index
        clients = Client.all 
        render json: clients
    end

    def create
        # binding.pry
        client = Client.new(client_params)
        if client.save
            render json: client
        else
            render json: {error: 'Client information invalid'}
        end
    end

    def show
        client = Client.find(params[:id])
        render json: client, :include => [:appointments => [:include => [:provyder]]]
    #   clean up duplicate data

    end

    def destroy
        client = Client.find(params[:id])
        client.destroy
    end

    private
        def client_params
            params.require(:client).permit(:first_name, :last_name, :cin, :phone, :address, :zipcode, :user_id)
        end
end

