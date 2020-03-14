class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :when, :kind
end
