class Api::V1::AppointmentsController < ApplicationController

    before_action :set_appointment

    def index
        # consider conditional? would it be helpful?
        @appointments = @client.appointments
        render json: @appointments        
    end

    def create
        @appointment = @client.appointments.build(appointment_params) 
        if @appointment.save 
            render json: @appointment
        else
            @appointment.build_provyder unless @appointment.provyder
            render json: {error: 'Appointment not saved'}
        end
    end

    def show
        @appointment = @client.appointments.find_by(id: params[:id])
        # or @appointment = Appointment.find(params[:id])
    end

    def destroy
       set_appointment
       @appointment.destroy
       #return json?
    end

    private
        def set_appointment
            @client = Client.find(params[:client_id])
        end

        def appointment_params
            params.require(:appointment).permit(:client_id, :provyder_id, :when, :kind)
        end
end
