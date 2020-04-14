class Provyder < ApplicationRecord
has_many :appointments
has_many :clients, through: :appointments
validates :first_name, :last_name, presence: true
validates_length_of :phone, is: 10, allow_nil: true
validates_length_of :fax, is: 10, allow_nil: true
validates_length_of :zipcode, is: 5, allow_nil: true




end
