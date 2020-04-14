class Client < ApplicationRecord
    has_many :appointments
    has_many :provyders,-> { distinct }, through: :appointments
    validates :first_name, :last_name, :cin, presence: true
    validates_length_of :phone, is: 10, allow_blank: true
    validates_length_of :zipcode, is: 5, allow_blank: true
    # belongs_to :user

    
end

