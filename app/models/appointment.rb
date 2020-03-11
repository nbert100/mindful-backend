class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :provider

    validates :appointment, presence: true
end
