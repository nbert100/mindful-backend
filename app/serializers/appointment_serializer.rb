class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :when, :kind, :provyder_id, :client_id
  belongs_to :client
  belongs_to :provyder
end
