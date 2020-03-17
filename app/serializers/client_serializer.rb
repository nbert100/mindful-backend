class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cin, :phone, :address, :zipcode
  has_many :appointments
  has_many :provyders, through: :appointments
  # belongs_to :user

  
end
