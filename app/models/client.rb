class Client < ApplicationRecord
    has_many :appointments
    has_many :providers, through :appointments

    validates :first_name, :last_name, :cin, presence: true
end
