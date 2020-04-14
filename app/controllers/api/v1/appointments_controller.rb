class Api::V1::AppointmentsController < ApplicationController

    before_action :set_appointment

    def index
        @appointments = @client.appointments
        render json: @appointments        
    end

    def create
        @appointment = @client.appointments.build(appointment_params) 
        if @appointment.save 
            render json: @appointment
        else
            render json: {error: @appointment.errors.full_messages}
        end
    end

    def show
        @appointment = @client.appointments.find_by(id: params[:id])
        
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        
       @appointment.destroy
    
    render json: @appointment
    end

    private
        def set_appointment
            @client = Client.find(params[:client_id])
        end

        def appointment_params
            params.require(:appointment).permit(:client_id, :provyder_id, :when, :kind, provyder_attributes: [:first_name, :last_name, :specialty, :title, :phone, :fax, :address, :zipcode])
        end
end
