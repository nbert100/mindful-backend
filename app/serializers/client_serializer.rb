class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cin, :phone, :address, :zipcode
end
