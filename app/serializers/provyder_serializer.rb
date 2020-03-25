class ProvyderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :title, :phone, :fax, :address, :zipcode
  has_many :appointments
  has_many :clients, through: :appointments
  
end
