class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :phone, :fax, :address, :zipcode
end
