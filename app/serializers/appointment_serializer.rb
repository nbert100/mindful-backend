class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :when, :kind, :provyder_id, :client_id
end
