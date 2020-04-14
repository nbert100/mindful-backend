class Api::V1::ProvydersController < ApplicationController
    def index
        @provyders = Provyder.all 
        render json: @provyders
    end

    def create
        @provyder = Provyder.new(provyder_params)
        if @provyder.save
            render json: @provyder
        else
            render json: {error: 'Provider information invalid'}
        end
    end

    def show
        @provyder = Provyder.find(params[:id])
        render json: @provyder
    end

    def destroy
        @provyder = Provyder.find(params[:id])
        @provyder.destroy
    end

    private
        def provyder_params
            params.require(:provyder).permit(:first_name, :last_name, :specialty, :title, :phone, :fax, :address, :zipcode)
        end
end
