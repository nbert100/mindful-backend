class ProvyderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :title, :phone, :fax, :address, :zipcode
  
end
