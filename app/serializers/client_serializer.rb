class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cin, :phone, :address, :zipcode, :user_id
  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user
end
