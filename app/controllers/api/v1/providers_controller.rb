class Api::V1::ProvidersController < ApplicationController

    def index
        @providers = Provider.all 
        render json: @providers
    end

    def create
    #should be grabbed by API?
        @provider = Provider.new(provider_params)
        if @provider.save
            render json: @provider
        else
            render json: {error: 'Provider information invalid'}
        end
    end

    def show
        @provider = Provider.find(params[:id])
        render json: @provider
    end

    def destroy
        @provider = Provider.find(params[:id])
        @provider.destroy
    end

    private
        def provider_params
            params.require(:provider).permit(:first_name, :last_name, :specialty)
        end
end
